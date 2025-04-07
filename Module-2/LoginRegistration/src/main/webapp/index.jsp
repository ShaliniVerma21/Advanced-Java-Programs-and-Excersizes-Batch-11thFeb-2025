<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
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
        .login-container {
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
            width: 48%; /* Adjust width for buttons */
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
    <form method="post" action="login.jsp">
        <div class="login-container">
            <h2>Login Page</h2>
            <table border="0" cellpadding="3">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="userName" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">New User 
                        <a href="register.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>