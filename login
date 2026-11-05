<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 24px;
            color: #333333;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            color: #666666;
            font-size: 14px;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            outline: none;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus {
            border-color: #007bff;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        .form-footer {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
        }

        .form-footer a {
            color: #007bff;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Account Login</h2>
        <form id="loginForm" onsubmit="return validateLogin(event)">
            <div class="input-group">
                <label for="username">Username or Email</label>
                <input type="text" id="username" placeholder="Enter your username" required>
            </div>
            
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" placeholder="Enter your password" required>
            </div>
            
            <button type="submit" class="btn-submit">Sign In</button>
        </form>

        <div class="form-footer">
            <p>Don't have an account? <a href="#">Register here</a></p>
        </div>
    </div>

    <script>
        function validateLogin(event) {
            // Prevent the form from trying to submit to a server automatically
            event.preventDefault(); 
            
            const usernameInput = document.getElementById('username').value;
            const passwordInput = document.getElementById('password').value;

            // Example validation logic
            if (usernameInput === "admin" && passwordInput === "password123") {
                alert("Login successful!");
                // You can redirect to another page here, like: window.location.href = "dashboard.html";
            } else {
                alert("Invalid username or password. Try admin / password123");
            }
        }
    </script>

</body>
</html>
