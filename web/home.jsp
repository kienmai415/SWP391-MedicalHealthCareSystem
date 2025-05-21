<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediCare+</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        /* Navbar styles */
        header {
            background-color: #006400;
            color: white;
            padding: 15px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-left: 30px;
            padding-right: 30px;
        }

        .navbar-left {
            display: flex;
            align-items: center;
        }

        .navbar-left img {
            width: 40px;
            height: 40px;
            margin-right: 10px;
        }

        .navbar-left h1 {
            font-size: 24px;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            display: flex;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            margin-left: 20px;
            font-size: 18px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
        }

        .search-bar input {
            padding: 7px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-left: 10px;
        }

        .login-btn {
            background-color: #A71011;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #FFCC00;
        }

        /* Body section */
        .main-body {
            margin: 20px;
            text-align: center;
        }

        .main-body img {
            width: 80%;
            height: auto;
            border-radius: 10px;
        }

        /* Footer section */
        footer {
            background-color: #006400;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <header>
        <div class="navbar-left">
            <img src="images/logo.png" alt="Logo">
            <h1>MediCare+</h1>
        </div>
        <nav>
            <ul>
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Giới thiệu</a></li>
                <li><a href="#">Cơ cấu tổ chức</a></li>
                <li><a href="#">Đội ngũ bác sĩ</a></li>
                <li><a href="#">Đặt lịch khám</a></li>
                <li><a href="#">Tin tức</a></li>
                <li><a href="#">Dành cho bệnh nhân</a></li>
            </ul>
        </nav>
        <div class="search-bar">
            <input type="text" placeholder="Từ khóa tìm kiếm...">
        </div>
        <!-- Thêm form để bấm đăng nhập -->
        <form action="auth" method="post">
            <button type="submit" class="login-btn">Đăng nhập</button>
        </form>
    </header>

    <!-- Main Body -->
    <div class="main-body">
        <h2>TẢI APP MediCare</h2>
        <p>Quét mã tải app, trải nghiệm ngay</p>
        <div class="qr-codes">
            <img src="images/qr_code_image.png" alt="QR Code" />
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>Trí - Đức - Chuyên tâm - Vươn tầm Thế giới</p>
    </footer>

</body>
</html>
