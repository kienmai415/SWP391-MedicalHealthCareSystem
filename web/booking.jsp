<%-- 
    Document   : booking
    Created on : May 22, 2025, 4:44:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
        <!-- Swiper CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
            :root {
                --primary: #2ecc71;
                --primary-dark: #27ae60;
                --primary-light: #a9dfbf;
                --primary-very-light: #eafaf1;
                --secondary: #3498db;
                --dark: #2c3e50;
                --light: #ecf0f1;
                --gray: #95a5a6;
                --success: #27ae60;
                --info: #3498db;
                --warning: #f39c12;
                --danger: #e74c3c;
                --white: #ffffff;
                --black: #000000;
            }

            body {
                font-family: 'Poppins', sans-serif;
                color: var(--dark);
                line-height: 1.7;
                overflow-x: hidden;
                background-color: #f9f9f9;
            }

            h1, h2, h3, h4, h5, h6 {
                font-weight: 700;
                line-height: 1.3;
            }

            .navbar {
                padding: 20px 0;
                transition: all 0.3s ease;
                background-color: transparent;
            }

            .navbar-scrolled {
                background-color: var(--white);
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
                padding: 15px 0;
            }

            .navbar-brand {
                font-weight: 700;
                font-size: 1.8rem;
                color: var(--primary);
            }

            .navbar-brand span {
                color: var(--dark);
            }

            .navbar-brand i {
                color: var(--primary);
                font-size: 2rem;
                margin-right: 10px;
            }

            .navbar-nav .nav-link {
                font-weight: 500;
                color: var(--dark);
                padding: 10px 15px;
                position: relative;
                transition: all 0.3s ease;
            }

            .navbar-nav .nav-link::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 50%;
                width: 0;
                height: 2px;
                background-color: var(--primary);
                transition: all 0.3s ease;
                transform: translateX(-50%);
            }

            .navbar-nav .nav-link:hover::after,
            .navbar-nav .nav-link.active::after {
                width: 70%;
            }

            .navbar-nav .nav-link:hover,
            .navbar-nav .nav-link.active {
                color: var(--primary);
            }

            .navbar-toggler {
                border: none;
                padding: 0;
            }

            .navbar-toggler:focus {
                box-shadow: none;
            }

            .navbar-toggler-icon {
                width: 30px;
                height: 20px;
                position: relative;
                transition: all 0.3s ease;
            }

            .navbar-toggler-icon::before,
            .navbar-toggler-icon::after {
                content: '';
                position: absolute;
                width: 100%;
                height: 2px;
                background-color: var(--dark);
                left: 0;
                transition: all 0.3s ease;
            }

            .navbar-toggler-icon::before {
                top: 0;
            }

            .navbar-toggler-icon::after {
                bottom: 0;
            }

            .navbar-toggler-icon .middle-bar {
                position: absolute;
                width: 100%;
                height: 2px;
                background-color: var(--dark);
                left: 0;
                top: 50%;
                transform: translateY(-50%);
                transition: all 0.3s ease;
            }

            .navbar-toggler[aria-expanded="true"] .navbar-toggler-icon::before {
                transform: rotate(45deg);
                top: 9px;
            }

            .navbar-toggler[aria-expanded="true"] .navbar-toggler-icon::after {
                transform: rotate(-45deg);
                bottom: 9px;
            }

            .navbar-toggler[aria-expanded="true"] .navbar-toggler-icon .middle-bar {
                opacity: 0;
            }

            .navbar-nav {
                background-color: var(--white);
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            }

            .btn {
                border-radius: 50px;
                padding: 12px 30px;
                font-weight: 500;
                transition: all 0.3s ease;
                position: relative;
                overflow: hidden;
                z-index: 1;
            }

            .btn::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 0;
                background-color: rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
                z-index: -1;
            }

            .btn:hover::after {
                height: 100%;
            }

            .btn-primary {
                background-color: var(--primary);
                border-color: var(--primary);
                color: var(--white);
                box-shadow: 0 5px 15px rgba(46, 204, 113, 0.3);
            }

            .btn-primary:hover, .btn-primary:focus {
                background-color: var(--primary-dark);
                border-color: var(--primary-dark);
                transform: translateY(-3px);
                box-shadow: 0 8px 20px rgba(46, 204, 113, 0.4);
            }

            .section-padding {
                padding: 100px 0;
            }

            .appointment-section {
                position: relative;
                background-color: var(--primary-very-light);
                overflow: hidden;
            }

            .appointment-section::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%232ecc71' fill-opacity='0.05'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
                opacity: 0.5;
            }

            .appointment-form {
                background-color: var(--white);
                border-radius: 20px;
                padding: 40px;
                box-shadow: 0 20px 40px rgba(0, 0, 0, 0.05);
                position: relative;
                z-index: 1;
            }

            .appointment-form h4 {
                font-size: 1.8rem;
                margin-bottom: 30px;
                text-align: center;
                font-weight: 600;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-control, .form-select {
                height: 55px;
                border-radius: 10px;
                border: 1px solid #e0e0e0;
                padding: 10px 20px;
                font-size: 1rem;
                transition: all 0.3s ease;
            }

            .form-control:focus, .form-select:focus {
                border-color: var(--primary);
                box-shadow: 0 0 0 0.25rem rgba(46, 204, 113, 0.25);
            }

            textarea.form-control {
                height: auto;
                min-height: 120px;
            }

            .form-label {
                font-weight: 500;
                margin-bottom: 10px;
                color: var(--dark);
            }

            .contact-info {
                display: flex;
                align-items: center;
                margin-bottom: 30px;
            }

            .contact-icon {
                width: 60px;
                height: 60px;
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: var(--primary-very-light);
                color: var(--primary);
                border-radius: 50%;
                margin-right: 20px;
                font-size: 1.5rem;
                transition: all 0.3s ease;
            }

            .contact-info:hover .contact-icon {
                background-color: var(--primary);
                color: var(--white);
                transform: rotateY(180deg);
            }

            .contact-text h5 {
                font-size: 1.2rem;
                margin-bottom: 5px;
                font-weight: 600;
            }

            .contact-text p {
                color: var(--gray);
                margin-bottom: 0;
            }

            .footer {
                background-color: var(--dark);
                color: var(--white);
                position: relative;
                overflow: hidden;
            }

            .footer::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.05'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
                opacity: 0.1;
            }

            .footer-logo {
                font-size: 2rem;
                font-weight: 700;
                color: var(--white);
                margin-bottom: 20px;
                display: inline-block;
            }

            .footer-logo i {
                color: var(--primary);
                margin-right: 10px;
            }

            .footer-text {
                color: rgba(255, 255, 255, 0.7);
                margin-bottom: 30px;
            }

            .footer-social {
                margin-bottom: 30px;
            }

            .footer-social a {
                display: inline-flex;
                align-items: center;
                justify-content: center;
                width: 40px;
                height: 40px;
                background-color: rgba(255, 255, 255, 0.1);
                color: var(--white);
                border-radius: 50%;
                margin-right: 10px;
                transition: all 0.3s ease;
            }

            .footer-social a:hover {
                background-color: var(--primary);
                transform: translateY(-5px);
            }

            .footer-title {
                font-size: 1.5rem;
                font-weight: 600;
                color: var(--white);
                margin-bottom: 30px;
                position: relative;
                padding-bottom: 15px;
            }

            .footer-title::after {
                content: '';
                position: absolute;
                bottom: 0;
                left: 0;
                width: 50px;
                height: 2px;
                background-color: var(--primary);
            }

            .footer-links {
                list-style: none;
                padding-left: 0;
                margin-bottom: 0;
            }

            .footer-links li {
                margin-bottom: 15px;
            }

            .footer-links li a {
                color: rgba(255, 255, 255, 0.7);
                text-decoration: none;
                transition: all 0.3s ease;
                display: inline-block;
            }

            .footer-links li a:hover {
                color: var(--primary);
                transform: translateX(5px);
            }

            .footer-links li a i {
                margin-right: 10px;
                color: var(--primary);
            }

            .footer-newsletter p {
                color: rgba(255, 255, 255, 0.7);
                margin-bottom: 20px;
            }

            .footer-newsletter .form-control {
                background-color: rgba(255, 255, 255, 0.1);
                border: none;
                color: var(--white);
                height: 50px;
            }

            .footer-newsletter .form-control::placeholder {
                color: rgba(255, 255, 255, 0.5);
            }

            .footer-newsletter .btn {
                height: 50px;
                padding: 0 20px;
            }

            .footer-bottom {
                border-top: 1px solid rgba(255, 255, 255, 0.1);
                padding-top: 30px;
                margin-top: 60px;
            }

            .footer-bottom p {
                color: rgba(255, 255, 255, 0.7);
                margin-bottom: 0;
            }

            .footer-bottom-links {
                text-align: right;
            }

            .footer-bottom-links a {
                color: rgba(255, 255, 255, 0.7);
                text-decoration: none;
                margin-left: 20px;
                transition: all 0.3s ease;
            }

            .footer-bottom-links a:hover {
                color: var(--primary);
            }

            /* Responsive */
            @media (max-width: 991.98px) {
                .hero-section {
                    padding: 150px 0 100px;
                }

                .hero-section h1 {
                    font-size: 2.5rem;
                }

                .section-padding {
                    padding: 80px 0;
                }

                .section-title h2 {
                    font-size: 2rem;
                }

                .about-content h2 {
                    font-size: 2rem;
                }

                .counter-number {
                    font-size: 2rem;
                }

                .cta-content h2 {
                    font-size: 2rem;
                }

                .navbar-nav {
                    background-color: var(--white);
                    padding: 20px;
                    border-radius: 10px;
                    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                }
            }

            @media (max-width: 767.98px) {
                .hero-section {
                    padding: 120px 0 80px;
                }

                .hero-section h1 {
                    font-size: 2rem;
                }

                .section-padding {
                    padding: 60px 0;
                }

                .section-title h2 {
                    font-size: 1.8rem;
                }

                .about-content h2 {
                    font-size: 1.8rem;
                }

                .counter-number {
                    font-size: 1.8rem;
                }

                .cta-content h2 {
                    font-size: 1.8rem;
                }

                .footer-bottom-links {
                    text-align: left;
                    margin-top: 15px;
                }

                .footer-bottom-links a {
                    margin-left: 0;
                    margin-right: 20px;
                }

                .appointment-form {
                    padding: 30px;
                }
            }

            @media (max-width: 575.98px) {
                .hero-section {
                    padding: 100px 0 60px;
                }

                .hero-section h1 {
                    font-size: 1.8rem;
                }

                .section-padding {
                    padding: 50px 0;
                }

                .section-title h2 {
                    font-size: 1.5rem;
                }

                .about-content h2 {
                    font-size: 1.5rem;
                }

                .counter-number {
                    font-size: 1.5rem;
                }

                .cta-content h2 {
                    font-size: 1.5rem;
                }

                .appointment-form {
                    padding: 20px;
                }

                .testimonial-card {
                    padding: 30px;
                }
            }
        </style>
    </head>
    <body>
        <form action="booking" method="get">
            <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <i class="bi bi-heart-pulse-fill"></i><span>MediGreen</span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                        <span class="navbar-toggler-icon">
                            <span class="middle-bar"></span>
                        </span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <a class="nav-link active" href="home">Trang chủ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about">Giới thiệu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="service">Dịch vụ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="doctor">Bác sĩ</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="booking">Đặt lịch</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Appointment Section -->
            <section id="appointment" class="section-padding appointment-section">
                <div class="container">
                    <div class="row g-4 align-items-center">
                        <div class="col-lg-6 mb-5 mb-lg-0">
                            <h2 class="mb-4">Đặt lịch khám ngay hôm nay</h2>
                            <p class="mb-4">Đặt lịch khám trực tuyến để tiết kiệm thời gian và được ưu tiên khi đến phòng khám. Chúng tôi sẽ liên hệ lại để xác nhận lịch hẹn của bạn.</p>

                            <div class="contact-info">
                                <div class="contact-icon">
                                    <i class="bi bi-telephone-fill"></i>
                                </div>
                                <div class="contact-text">
                                    <h5>Gọi trực tiếp</h5>
                                    <p>1900 1234</p>
                                </div>
                            </div>

                            <div class="contact-info">
                                <div class="contact-icon">
                                    <i class="bi bi-envelope-fill"></i>
                                </div>
                                <div class="contact-text">
                                    <h5>Email</h5>
                                    <p>info@medigreen.vn</p>
                                </div>
                            </div>

                            <div class="contact-info">
                                <div class="contact-icon">
                                    <i class="bi bi-geo-alt-fill"></i>
                                </div>
                                <div class="contact-text">
                                    <h5>Địa chỉ</h5>
                                    <p>123 Đường Lê Lợi, Quận 1, TP. Hồ Chí Minh</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="appointment-form">
                                <h4>Thông tin đặt lịch</h4>
                                <form>
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name" class="form-label">Họ và tên</label>
                                                <input type="text" class="form-control" id="name" placeholder="Nguyễn Văn A">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="phone" class="form-label">Số điện thoại</label>
                                                <input type="tel" class="form-control" id="phone" placeholder="0912345678">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="email" class="form-label">Email</label>
                                                <input type="email" class="form-control" id="email" placeholder="example@gmail.com">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="date" class="form-label">Ngày khám</label>
                                                <input type="date" class="form-control" id="date">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="time" class="form-label">Giờ khám</label>
                                                <select class="form-select" id="time">
                                                    <option selected>Chọn giờ</option>
                                                    <option>08:00 - 09:00</option>
                                                    <option>09:00 - 10:00</option>
                                                    <option>10:00 - 11:00</option>
                                                    <option>14:00 - 15:00</option>
                                                    <option>15:00 - 16:00</option>
                                                    <option>16:00 - 17:00</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="department" class="form-label">Chuyên khoa</label>
                                                <select class="form-select" id="department">
                                                    <option selected>Chọn chuyên khoa</option>
                                                    <option>Khoa Tim mạch</option>
                                                    <option>Khoa Nhi</option>
                                                    <option>Khoa Nội tổng hợp</option>
                                                    <option>Khoa Da liễu</option>
                                                    <option>Khoa Mắt</option>
                                                    <option>Khoa Tai Mũi Họng</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="message" class="form-label">Triệu chứng</label>
                                                <textarea class="form-control" id="message" rows="3" placeholder="Mô tả triệu chứng của bạn"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button type="submit" class="btn btn-primary w-100">Đặt lịch ngay</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <footer class="footer section-padding">
                <div class="container">
                    <div class="row g-4">
                        <div class="col-lg-4 col-md-6">
                            <a href="#" class="footer-logo">
                                <i class="bi bi-heart-pulse-fill"></i>MediGreen
                            </a>
                            <p class="footer-text">MediGreen là phòng khám đa khoa uy tín hàng đầu, cung cấp dịch vụ chăm sóc sức khỏe chất lượng cao với đội ngũ y bác sĩ giàu kinh nghiệm.</p>
                            <div class="footer-social">
                                <a href="#"><i class="bi bi-facebook"></i></a>
                                <a href="#"><i class="bi bi-youtube"></i></a>
                                <a href="#"><i class="bi bi-instagram"></i></a>
                                <a href="#"><i class="bi bi-twitter"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <h5 class="footer-title">Liên kết nhanh</h5>
                            <ul class="footer-links">
                                <li><a href="#"><i class="bi bi-chevron-right"></i> Trang chủ</a></li>
                                <li><a href="#about"><i class="bi bi-chevron-right"></i> Giới thiệu</a></li>
                                <li><a href="#services"><i class="bi bi-chevron-right"></i> Dịch vụ</a></li>
                                <li><a href="#doctors"><i class="bi bi-chevron-right"></i> Bác sĩ</a></li>
                                <li><a href="#appointment"><i class="bi bi-chevron-right"></i> Đặt lịch</a></li>
                                <li><a href="#contact"><i class="bi bi-chevron-right"></i> Liên hệ</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-6">
                            <h5 class="footer-title">Dịch vụ</h5>
                            <ul class="footer-links">
                                <li><a href="#"><i class="bi bi-chevron-right"></i> Khám tổng quát</a></li>
                                <li><a href="#"><i class="bi bi-chevron-right"></i> Khám chuyên khoa</a></li>
                                <li><a href="#"><i class="bi bi-chevron-right"></i> Xét nghiệm</a></li>
                                <li><a href="#"><i class="bi bi-chevron-right"></i> Chẩn đoán hình ảnh</a></li>
                                <li><a href="#"><i class="bi bi-chevron-right"></i> Phẫu thuật</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <h5 class="footer-title">Đăng ký nhận tin</h5>
                            <p class="footer-text">Đăng ký để nhận thông tin mới nhất về sức khỏe và các chương trình khuyến mãi.</p>
                            <div class="footer-newsletter">
                                <form class="mb-3">
                                    <div class="input-group">
                                        <input type="email" class="form-control" placeholder="Email của bạn" aria-label="Email của bạn">
                                        <button class="btn btn-primary" type="button">Đăng ký</button>
                                    </div>
                                </form>
                            </div>
                            <p class="footer-text">
                                <i class="bi bi-telephone-fill me-2"></i> Hotline: 1900 1234
                            </p>
                        </div>
                    </div>
                    <div class="footer-bottom">
                        <div class="row">
                            <div class="col-md-6">
                                <p>© 2023 MediGreen. Tất cả các quyền được bảo lưu.</p>
                            </div>
                            <div class="col-md-6 footer-bottom-links">
                                <a href="#">Điều khoản sử dụng</a>
                                <a href="#">Chính sách bảo mật</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </form>

    </body>
</html>
