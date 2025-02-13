package Day1_GUI;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class ToDoListApp extends JFrame {

    private static final long serialVersionUID = 1L;
    private JPanel contentPane;
    private JTextField taskField; // Text field for entering tasks
    private DefaultListModel<String> taskListModel; // Model for the task list
    private JList<String> taskList; // List to display tasks

    /**
     * Launch the application.
     */
    public static void main(String[] args) {
        EventQueue.invokeLater(() -> {
            try {
                ToDoListApp frame = new ToDoListApp();
                frame.setVisible(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });
    }

    /**
     * Create the frame.
     */
    public ToDoListApp() {
        // Set up the frame
        setTitle("To-Do List Application");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(100, 100, 728, 512);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(10, 10, 10, 10));
        setContentPane(contentPane);
        contentPane.setLayout(new BorderLayout());

        // Create the task input panel
        JPanel inputPanel = new JPanel();
        inputPanel.setLayout(new FlowLayout());

        // Create a label for the task input
        JLabel taskLabel = new JLabel("Enter Task:");
        inputPanel.add(taskLabel);

        // Create a text field for entering tasks
        taskField = new JTextField(20);
        inputPanel.add(taskField);

        // Create an "Add" button
        JButton addButton = new JButton("Add");
        inputPanel.add(addButton);

        // Create a "Remove" button
        JButton removeButton = new JButton("Remove");
        inputPanel.add(removeButton);

        // Add the input panel to the content pane
        contentPane.add(inputPanel, BorderLayout.NORTH);

        // Create a list model and a JList to display tasks
        taskListModel = new DefaultListModel<>();
        taskList = new JList<>(taskListModel);
        taskList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        JScrollPane scrollPane = new JScrollPane(taskList);
        contentPane.add(scrollPane, BorderLayout.CENTER);

        // Add action listener for the "Add" button
        addButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                String task = taskField.getText().trim();
                if (!task.isEmpty()) {
                    taskListModel.addElement(task); // Add task to the list
                    taskField.setText(""); // Clear the text field
                } else {
                    JOptionPane.showMessageDialog(null, "Please enter a task.", "Warning", 
                    		JOptionPane.WARNING_MESSAGE);
                }
            }
        });

        // Add action listener for the "Remove" button
        removeButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                int selectedIndex = taskList.getSelectedIndex();
                if (selectedIndex != -1) {
                    taskListModel.remove(selectedIndex); // Remove selected task
                } else {
                    JOptionPane.showMessageDialog(null, "Please select a task to remove.", "Warning", 
                    		JOptionPane.WARNING_MESSAGE);
                }
            }
        });
    }
}