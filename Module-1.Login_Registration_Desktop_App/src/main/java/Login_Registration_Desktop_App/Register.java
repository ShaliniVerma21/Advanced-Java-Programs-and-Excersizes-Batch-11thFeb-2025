package Login_Registration_Desktop_App;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import org.mindrot.jbcrypt.BCrypt;

import javax.swing.JCheckBox;

public class Register extends JFrame {
    private static final long serialVersionUID = 1L;
    private JPanel contentPane;
    private JTextField nameField, emailField, phoneField, addressField, dobField;
    private JPasswordField passwordField, confirmPasswordField;
    private JCheckBox showPasswordCheckBox;
    private JCheckBox termsCheckBox;
    private DatabaseHelper dbHelper;

    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                Register frame = new Register();
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    public Register() {
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 1088, 660);
        contentPane = new JPanel();
        contentPane.setBackground(new Color(230, 230, 250));
        contentPane.setLayout(null);
        setContentPane(contentPane);

        JLabel RegisterLabel = new JLabel("Register");
        RegisterLabel.setFont(new Font("Arial", Font.BOLD, 45));
        RegisterLabel.setForeground(new Color(0, 128, 0));
        RegisterLabel.setBounds(250, 10, 602, 60);
        RegisterLabel.setHorizontalAlignment(JLabel.CENTER);
        RegisterLabel.setBorder(BorderFactory.createLineBorder(Color.BLACK, 4));
        RegisterLabel.setOpaque(true);
        contentPane.add(RegisterLabel);

        // Initialize fields
        nameField = createField("Name:", 100);
        emailField = createField("Email:", 160);
        phoneField = createField("Phone:", 220);
        addressField = createField("Address:", 280);
        dobField = createField("DOB (YYYY-MM-DD):", 340);
        passwordField = new JPasswordField();
        confirmPasswordField = new JPasswordField();
        
        // Add password fields
        addField("Password:", 400, passwordField);
        addField("Confirm Password:", 460, confirmPasswordField);

        // Show password checkbox
        showPasswordCheckBox = new JCheckBox("Show Password");
        showPasswordCheckBox.setBounds(414, 500, 150, 20);
        contentPane.add(showPasswordCheckBox);
        showPasswordCheckBox.addActionListener(e -> {
            char echoChar = showPasswordCheckBox.isSelected() ? (char) 0 : '*';
            passwordField.setEchoChar(echoChar);
            confirmPasswordField.setEchoChar(echoChar);
        });

        // Terms checkbox
        termsCheckBox = new JCheckBox("I agree to the terms and conditions");
        termsCheckBox.setBounds(415, 530, 250, 20);
        contentPane.add(termsCheckBox);

        // Register button
        JButton registerButton = createButton("REGISTER", 394, 570);
        registerButton.addActionListener(e -> registerUser ());
        contentPane.add(registerButton);

        // Back button
        JButton backButton = createButton("BACK", 574, 571);
        backButton .addActionListener(e -> {
            Login loginFrame = new Login();
            loginFrame.setVisible(true);
            dispose();
        });
        contentPane.add(backButton);
    }

    private JTextField createField(String label, int y) {
        JLabel labelField = new JLabel(label);
        labelField.setFont(new Font("Arial", Font.BOLD, 18));
        labelField.setForeground(new Color(0, 0, 0));
        labelField.setBounds(275, y, 115, 30);
        contentPane.add(labelField);

        JTextField field = new JTextField();
        field.setFont(new Font("Arial", Font.BOLD, 18));
        field.setForeground(new Color(0, 0, 0));
        field.setBackground(new Color(240, 240, 240));
        field.setBounds(414, y - 5, 301, 40);
        contentPane.add(field);
        return field;
    }

    private void addField(String label, int y, JPasswordField field) {
        JLabel labelField = new JLabel(label);
        labelField.setFont(new Font("Arial", Font.BOLD, 18));
        labelField.setForeground(new Color(0, 0, 0));
        labelField.setBounds(275, y, 115, 30);
        contentPane.add(labelField);

        field.setFont(new Font("Arial", Font.BOLD, 18));
        field.setForeground(new Color(0, 0, 0));
        field.setBackground(new Color(240, 240, 240));
        field.setBounds(414, y - 5, 301, 40);
        contentPane.add(field);
    }

    private JButton createButton(String text, int x, int y) {
        JButton button = new JButton(text);
        button.setFont(new Font("Arial", Font.BOLD, 18));
        button.setForeground(new Color(255, 255, 255));
        button.setBackground(new Color(34, 139, 34));
        button.setBounds(x, y, 170, 43);
        return button;
    }

    private boolean isEmpty(String... fields) {
        for (String field : fields) {
            if (field.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    private boolean isValidEmail(String email) {
        String emailRegex = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
        Pattern emailPattern = Pattern.compile(emailRegex, Pattern.CASE_INSENSITIVE);
        Matcher matcher = emailPattern.matcher(email);
        return matcher.find();
    }

    private boolean isValidPassword(String password) {
        String passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$";
        Pattern passwordPattern = Pattern.compile(passwordRegex);
        Matcher matcher = passwordPattern.matcher(password);
        return matcher.find();
    }
    
    private void registerUser () {
        String name = nameField.getText();
        String email = emailField.getText();
        String phone = phoneField.getText();
        String address = addressField.getText();
        String dob = dobField.getText();
        String password = new String(passwordField.getPassword());
        String confirmPassword = new String(confirmPasswordField.getPassword());

        // Validation checks
        if (isEmpty(name, email, phone, address, dob, password, confirmPassword)) {
            JOptionPane.showMessageDialog(this, "Please fill all fields", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        if (!isValidEmail(email)) {
            JOptionPane.showMessageDialog(this, "Invalid email address", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        if (!isValidPassword(password)) {
            JOptionPane.showMessageDialog(this, "Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one digit", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        if (!password.equals(confirmPassword)) {
            JOptionPane.showMessageDialog(this, "Password and confirm password do not match", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        if (!termsCheckBox.isSelected()) {
            JOptionPane.showMessageDialog(this, "You must agree to the terms and conditions", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        dbHelper = new DatabaseHelper();
        String hashedPassword = dbHelper.getHashedPasswordFromDatabase(email);
        if (hashedPassword !=null) {
            JOptionPane.showMessageDialog(this, "User  already exists!", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        // Hash the password
        String Password = BCrypt.hashpw(password, BCrypt.gensalt());

        // Register the user
        if (dbHelper.registerUser (name, email, phone, address, dob, Password)) {
            JOptionPane.showMessageDialog(this, "Registration successful!", "Success", JOptionPane.INFORMATION_MESSAGE);
            new Login().setVisible(true);
            dispose();
        } else {
            JOptionPane.showMessageDialog(this, "Registration failed. Please try again.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}