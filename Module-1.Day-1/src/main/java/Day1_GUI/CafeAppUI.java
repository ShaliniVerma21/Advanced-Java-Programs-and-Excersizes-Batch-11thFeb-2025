package Day1_GUI;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class CafeAppUI extends JFrame {

    private static final long serialVersionUID = 1L;
    private JPanel contentPane;

    /**
     * Launch the application.
     */
    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                CafeAppUI frame = new CafeAppUI();
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    /**
     * Create the frame.
     */
    public CafeAppUI() {
        // Set up the frame
        setTitle("Cafe Application");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 800, 600);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(10, 10, 10, 10));
        setContentPane(contentPane);
        contentPane.setLayout(new BorderLayout());
        contentPane.setBackground(new Color(255, 228, 196)); // Light peach background

        // Create header panel
        JPanel headerPanel = new JPanel();
        headerPanel.setLayout(new FlowLayout());
        headerPanel.setBackground(new Color(139, 69, 19)); // Brown color for header
        JLabel titleLabel = new JLabel("Welcome to Our Cafe");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
        titleLabel.setForeground(Color.WHITE); // White text color
        headerPanel.add(titleLabel);
        contentPane.add(headerPanel, BorderLayout.NORTH);

        // Create menu panel
        JPanel menuPanel = new JPanel();
        menuPanel.setLayout(new GridLayout(0, 2, 10, 10));
        menuPanel.setBorder(BorderFactory.createTitledBorder("Menu"));
        menuPanel.setBackground(new Color(255, 228, 196)); // Match background color

        // Sample menu items
        String[] menuItems = {
            "Coffee", "Tea",
            "Sandwich", "Pastry",
            "Salad", "Juice",
            "Cake", "Ice Cream"
        };

        for (String item : menuItems) {
            JButton menuButton = new JButton(item);
            menuButton.setFont(new Font("Arial", Font.PLAIN, 18));
            menuButton.setBackground(new Color(255, 140, 0)); // Orange background for buttons
            menuButton.setForeground(Color.WHITE); // White text color for buttons
            menuButton.setFocusPainted(false); // Remove focus border
            menuPanel.add(menuButton);
        }

        contentPane.add(menuPanel, BorderLayout.CENTER);

        // Create order panel
        JPanel orderPanel = new JPanel();
        orderPanel.setLayout(new BorderLayout());
        orderPanel.setBorder(BorderFactory.createTitledBorder("Your Order"));
        orderPanel.setBackground(new Color(255, 228, 196)); // Match background color

        JTextArea orderTextArea = new JTextArea(10, 30);
        orderTextArea.setEditable(false);
        orderTextArea.setBackground(Color.WHITE); // White background for text area
        orderTextArea.setFont(new Font("Arial", Font.PLAIN, 16));
        orderPanel.add(new JScrollPane(orderTextArea), BorderLayout.CENTER);

        JButton clearOrderButton = new JButton("Clear Order");
        clearOrderButton.setBackground(new Color(255, 140, 0)); // Orange background for button
        clearOrderButton.setForeground(Color.WHITE); // White text color for button
        clearOrderButton.setFocusPainted(false); // Remove focus border
        orderPanel.add(clearOrderButton, BorderLayout.SOUTH);

        contentPane.add(orderPanel, BorderLayout.EAST);

        // Create footer panel
        JPanel footerPanel = new JPanel();
        footerPanel.setLayout(new FlowLayout());
        footerPanel.setBackground(new Color(139, 69, 19)); // Brown color for footer
        JButton checkoutButton = new JButton("Checkout");
        checkoutButton.setFont(new Font("Arial", Font.BOLD, 18));
        checkoutButton.setBackground(new Color(255, 140, 0)); // Orange background for button
        checkoutButton.setForeground(Color.WHITE); // White text color for button
        checkoutButton.setFocusPainted(false); // Remove focus border
        footerPanel.add(checkoutButton);
        contentPane.add(footerPanel, BorderLayout.SOUTH);
    }
}