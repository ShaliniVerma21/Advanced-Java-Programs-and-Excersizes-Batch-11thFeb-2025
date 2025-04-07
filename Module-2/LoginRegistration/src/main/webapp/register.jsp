<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration</title>
    <style>
        body {
            background-color: silver;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0;
        }
        .registration-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px; /* Fixed width for the form */
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Include padding in width */
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            width: 68%; /* Adjust width for buttons */
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
        a {
            color: #4CAF50; /* Link color */
            text-decoration: none; /* Remove underline */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <form method="post" action="userRegistration.jsp">
        <div class="registration-container">
            <h2>Enter Information Here</h2>
            <table border="0" cellpadding="5">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstName" required /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastName" required /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" required /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userName" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                        Already registered? <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>