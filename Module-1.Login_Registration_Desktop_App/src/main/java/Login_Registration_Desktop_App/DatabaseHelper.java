package Login_Registration_Desktop_App;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

	}