package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {

    public static int register(User u) {
        int status = 0;
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = ConnectionProvider.getCon();
            ps = con.prepareStatement
            ("INSERT INTO user (username, email, password) VALUES (?, ?, ?)");
            ps.setString(1, u.getUname());
            ps.setString(2, u.getUemail());
            ps.setString(3, u.getUpass());

            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception for debugging
        } finally {
            // Close resources in the finally block
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Log any exceptions during closing
            }
        }

        return status;
    }
}