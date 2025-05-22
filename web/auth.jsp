<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Authentication</title>
    <style>
        /* Thêm CSS để tạo giao diện đẹp */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f0f7ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #1a73e8;
            margin-bottom: 20px;
        }

        .tabs {
            display: flex;
            justify-content: space-between;
            border-bottom: 2px solid #ddd;
            margin-bottom: 20px;
        }

        .tabs button {
            background: transparent;
            border: none;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #1a73e8;
            cursor: pointer;
            transition: color 0.3s;
        }

        .tabs button.active {
            border-bottom: 2px solid #1a73e8;
            color: #1558b0;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px 15px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            outline: none;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #1a73e8;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #1a73e8;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #1558b0;
        }

        .social-login {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .facebook-btn {
            background-color: #3b5998;
            color: white;
        }

        .google-btn {
            background-color: #db4437;
            color: white;
        }

        .forgot-password {
            text-align: right;
            font-size: 14px;
            margin-top: 10px;
        }

        .forgot-password a {
            color: #1a73e8;
            text-decoration: none;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }

        .terms {
            text-align: center;
            font-size: 12px;
            margin-top: 15px;
            color: #777;
        }

        .terms a {
            color: #1a73e8;
            text-decoration: none;
        }

        .terms a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- Tabs cho đăng nhập và đăng ký -->
        <div class="tabs">
            <button class="<%= request.getAttribute("form") != null && request.getAttribute("form").equals("login") ? "active" : "" %>" onclick="location.href = 'auth?action=login'">Log in</button>
            <button class="<%= request.getAttribute("form") != null && request.getAttribute("form").equals("register") ? "active" : "" %>" onclick="location.href = 'auth?action=register'">Register</button>
        </div>

        <!-- Form Đăng nhập -->
        <div id="loginForm" style="<%= request.getAttribute("form") != null && request.getAttribute("form").equals("login") ? "" : "display: none;" %>">
            <h2>Log in</h2>
            <form action="auth" method="post">
                <input type="email" name="email" placeholder="Email Address" required />
                <input type="password" name="password" placeholder="Password" required />
                <button type="submit" name="action" value="login">Log in</button>
            </form>
            <div class="forgot-password">
                <a href="forgot-password.jsp">Forgot password?</a>
            </div>
            <div class="social-login">
                <button class="facebook-btn">Facebook</button>
                <button class="google-btn">Google</button>
            </div>
            <div class="terms">
                By continuing you agree to our <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>
            </div>
        </div>

        <!-- Form Đăng ký -->
        <div id="registerForm" style="<%= request.getAttribute("form") != null && request.getAttribute("form").equals("register") ? "" : "display: none;" %>">
            <h2>Register</h2>
            <form action="auth" method="post">
                <input type="email" name="email" placeholder="Email Address" required />
                <input type="password" name="password" placeholder="Password" required />
                <button type="submit" name="action" value="register">Create Account</button>
            </form>
            <div class="social-login">
                <button class="facebook-btn">Facebook</button>
                <button class="google-btn">Google</button>
            </div>
            <div class="terms">
                By continuing you agree to our <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>
            </div>
        </div>
    </div>

</body>
</html>
