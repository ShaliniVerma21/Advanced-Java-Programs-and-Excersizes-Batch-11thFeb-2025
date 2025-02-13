package Day1_GUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import java.awt.Font;

public class DemoApp extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField textField;
	private JPasswordField passwordField;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					DemoApp frame = new DemoApp();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public DemoApp() {
		setBackground(Color.LIGHT_GRAY);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 931, 643);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(176, 224, 230));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(280, 10, 383, 400);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblusername = new JLabel("UserName : ");
		lblusername.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblusername.setBounds(57, 125, 71, 16);
		panel.add(lblusername);
		
		textField = new JTextField();
		textField.setBounds(151, 125, 162, 19);
		panel.add(textField);
		textField.setColumns(10);
		
		JLabel lblpassword = new JLabel("Password : ");
		lblpassword.setFont(new Font("Tahoma", Font.PLAIN, 13));
		lblpassword.setBounds(57, 180, 71, 19);
		panel.add(lblpassword);
		
		passwordField = new JPasswordField();
		passwordField.setBounds(151, 181, 162, 19);
		panel.add(passwordField);
		
		JButton btnLogin = new JButton("Login");
		btnLogin.setBackground(new Color(50, 205, 50));
		btnLogin.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnLogin.setBounds(138, 250, 125, 21);
		panel.add(btnLogin);
		
		JLabel lblTitle = new JLabel("Welcome Back to ZoomCafe");
		lblTitle.setFont(new Font("Tahoma", Font.BOLD, 16));
		lblTitle.setForeground(new Color(0, 0, 0));
		lblTitle.setBackground(new Color(224, 255, 255));
		lblTitle.setBounds(70, 30, 243, 38);
		panel.add(lblTitle);
	}
}
