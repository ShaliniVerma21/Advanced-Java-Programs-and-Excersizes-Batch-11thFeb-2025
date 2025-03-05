package Java.GUI.SMS;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DatabaseHelper {

	    private static final String DB_URL = "jdbc:mysql://localhost:3306/SMS"; 
	    private static final String USER = "root"; // Your database username
	    private static final String PASS = "root"; // Your database password

	    //Perform Login
	    public String getHashedPasswordFromDatabase(String email) {
	        String sql = "SELECT password FROM User WHERE email = ?";
	        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	            preparedStatement.setString(1, email);
	            ResultSet resultSet = preparedStatement.executeQuery();
	            if (resultSet.next()) {
	                return resultSet.getString("password"); // Return the hashed password
	            } else {
	                return null; // User does not exist
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null; // Handle exception as needed
	        }
	    }

	    //Perform Registration
	    public boolean registerUser (String name, String email, String phone, String address, 
	    		String dob, String hashedPassword) {
	        String sql = "INSERT INTO User(name, email, phone, address, dob, password) "
	        		+ "VALUES (?, ?, ?, ?, ?, ?)";
	        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	            preparedStatement.setString(1, name);
	            preparedStatement.setString(2, email);
	            preparedStatement.setString(3, phone);
	            preparedStatement.setString(4, address);
	            preparedStatement.setString(5, dob);
	            preparedStatement.setString(6, hashedPassword);
	            return preparedStatement.executeUpdate() > 0; 
	            // Returns true if the insert was successful
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false; // Handle exception as needed
	        }
	    }
	    

	    // Method to add student data to the database
	    public boolean addStudent(Student student) {
	        String sql = "INSERT INTO student (serial_no, name, className, batchName, "
	        		+ "paymentDate, mobile, parentsMobile, payAmount) "
	        		+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	        
	        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
		             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	            preparedStatement.setInt(1, student.getSerialNo());
	            preparedStatement.setString(2, student.getName());
	            preparedStatement.setString(3, student.getClassName());
	            preparedStatement.setString(4, student.getBatchName());
	            preparedStatement.setDate(5, student.getPaymentDate());
	            preparedStatement.setString(6, student.getMobile());
	            preparedStatement.setString(7, student.getParentsMobile());
	            preparedStatement.setDouble(8, student.getPayAmount());

	            int rowsAffected = preparedStatement.executeUpdate();
	            return rowsAffected > 0; // Return true if the insert was successful
	        } catch (SQLException e) {
	            e.printStackTrace(); // Log the exception
	            return false; // Return false if there was an error
	        }
	    }
	    
	    // Method to update a student
	    public boolean updateStudent(Student student) {
	        String sql = "UPDATE Student SET name = ?, className = ?, batchName = ?, "
	        		+ "paymentDate = ?, mobile = ?, parentsMobile = ?, payAmount = ? "
	        		+ "WHERE serial_no = ?";
	        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	            preparedStatement.setString(1, student.getName());
	            preparedStatement.setString(2, student.getClassName());
	            preparedStatement.setString(3, student.getBatchName());
	            preparedStatement.setDate(4, Date.valueOf(student.getPaymentDate().toString()));
	            preparedStatement.setString(5, student.getMobile());
	            preparedStatement.setString(6, student.getParentsMobile());
	            preparedStatement.setDouble(7, student.getPayAmount());
	            preparedStatement.setInt(8, student.getSerialNo());
	            return preparedStatement.executeUpdate() > 0; 
	            // Returns true if the update was successful
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false; // Handle exception as needed
	        }
	    }

	    // Method to delete a student
        public boolean deleteStudent(int serialNo) {
            String sql = "DELETE FROM Student WHERE serial_no = ?"; 
            // Ensure this matches your database schema
            try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
                 PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setInt(1, serialNo);
                return preparedStatement.executeUpdate() > 0; 
                // Returns true if the delete was successful
            } catch (SQLException e) {
                e.printStackTrace(); // Log the exception
                return false; // Handle exception as needed
            }
        }


	    // Method to get all students
	    public List<Student> getAllStudents() {
	        List<Student> students = new ArrayList<>();
	        String sql = "SELECT * FROM Student"; // Assuming you have a Student table
	        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	             PreparedStatement preparedStatement = connection.prepareStatement(sql);
	             ResultSet resultSet = preparedStatement.executeQuery()) {
	            while (resultSet.next()) {
	                Student student = new Student();
	                student.setSerialNo(resultSet.getInt("serial_no"));
	                student.setName(resultSet.getString("name"));
	                student.setClassName(resultSet.getString("className"));
	                student.setBatchName(resultSet.getString("batchName"));
	                student.setPaymentDate(resultSet.getDate("paymentDate"));
	                student.setMobile(resultSet.getString("mobile"));
	                student.setParentsMobile(resultSet.getString("parentsMobile"));
	                student.setPayAmount(resultSet.getDouble("payAmount"));
	                students.add(student);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return students;
	    }

	    // Method to search for a student by name
	    public List<Student> searchStudentByName(String name) {
	        List<Student> students = new ArrayList<>();
	        String sql = "SELECT * FROM Student WHERE name LIKE ?"; // Use LIKE for partial matches
	        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
	             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	            preparedStatement.setString(1, "%" + name + "%"); // Add wildcards for partial matching
	            ResultSet resultSet = preparedStatement.executeQuery();
	            while (resultSet.next()) {
	                Student student = new Student();
	                student.setSerialNo(resultSet.getInt("serial_no"));
	                student.setName(resultSet.getString("name"));
	                student.setClassName(resultSet.getString("className"));
	                student.setBatchName(resultSet.getString("batchName"));
	                student.setPaymentDate(resultSet.getDate("paymentDate"));
	                student.setMobile(resultSet.getString("mobile"));
	                student.setParentsMobile(resultSet.getString("parentsMobile"));
	                student.setPayAmount(resultSet.getDouble("payAmount"));
	                students.add(student);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return students;
	    }

	}