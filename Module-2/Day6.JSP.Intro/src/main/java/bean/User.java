package bean;

import java.util.regex.Pattern;

public class User {
    private String uname;
    private String upass;
    private String uemail;

    // Constructor
    public User() {}

    public User(String uname, String upass, String uemail) {
        this.uname = uname;
        this.upass = upass;
        this.uemail = uemail;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass; 
        // Consider removing this if you want to avoid exposing the password
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    // Example validation methods
    public boolean isValidEmail() {
        String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        return Pattern.compile(emailRegex).matcher(uemail).matches();
    }

    public boolean isValidUsername() {
        return uname != null && uname.length() >= 3; 
        // Example: username must be at least 3 characters
    }

    public boolean isValidPassword() {
        return upass != null && upass.length() >= 6; 
        // Example: password must be at least 6 characters
    }

    @Override
    public String toString() {
        return "User {" +
                "uname='" + uname + '\'' +
                ", uemail='" + uemail + '\'' +
                // Avoid printing the password for security reasons
                '}';
    }
}