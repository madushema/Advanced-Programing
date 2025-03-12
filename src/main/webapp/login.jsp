<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- SweetAlert2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <!-- Custom CSS -->
    <style>
    /* General Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #FFDEE9 0%, #B5FFFC 50%, #ffffff 100%);
    color: #333;
    line-height: 1.6;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    overflow-x: hidden;
}

.login_main_wrapper {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    background: rgba(255, 255, 255, 0.9);
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    animation: fadeIn 1s ease-in-out;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Header Section */
.header_section {
    background: linear-gradient(135deg, #007bff, #00bfff);
    color: white;
    padding: 20px 0;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.navbar-brand {
    display: flex;
    align-items: center;
}

.navbar-brand img {
    transition: transform 0.3s ease;
}

.navbar-brand img:hover {
    transform: rotate(360deg);
}

.navbar-nav .nav-link {
    color: white !important;
    margin: 0 10px;
    transition: color 0.3s ease, transform 0.3s ease;
}

.navbar-nav .nav-link:hover {
    color: #ffdd57 !important;
    transform: translateY(-3px);
}

.navbar-nav .btn {
    background-color: #ffdd57;
    border: none;
    padding: 10px 20px;
    border-radius: 25px;
    font-weight: bold;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.navbar-nav .btn:hover {
    background-color: #ffcc00;
    transform: translateY(-3px);
}

/* Body Section */
.page_body_main_wrapper {
    padding: 40px 20px;
}

.login_form_wrapper {
    background: white;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    animation: slideInLeft 1s ease-in-out;
}

@keyframes slideInLeft {
    from {
        opacity: 0;
        transform: translateX(-20px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

.login_form_wrapper h2 {
    font-size: 2.5rem;
    color: #007bff;
    margin-bottom: 20px;
}

.login_form_wrapper p {
    color: #666;
    margin-bottom: 20px;
}

.login_form_wrapper input {
    width: 100%;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 10px;
    margin-bottom: 15px;
    font-size: 1rem;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

.login_form_wrapper input:focus {
    border-color: #007bff;
    box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
}

.login_form_wrapper .btn-primary {
    background: linear-gradient(135deg, #007bff, #00bfff);
    border: none;
    padding: 15px 30px;
    border-radius: 10px;
    font-size: 1rem;
    font-weight: bold;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.login_form_wrapper .btn-primary:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 15px rgba(0, 123, 255, 0.5);
}

.login_image_wrapper img {
    max-width: 100%;
    border-radius: 50%;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    animation: fadeInRight 1s ease-in-out;
}

@keyframes fadeInRight {
    from {
        opacity: 0;
        transform: translateX(20px);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

/* Footer Section */
.footer_wrapper {
    background: linear-gradient(135deg, #007bff, #00bfff);
    color: white;
    padding: 40px 20px;
    text-align: center;
}

.footer_wrapper h5 {
    margin-bottom: 20px;
}

.footer_wrapper .btn-warning {
    background: #ffdd57;
    border: none;
    padding: 10px 20px;
    border-radius: 10px;
    font-weight: bold;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.footer_wrapper .btn-warning:hover {
    background: #ffcc00;
    transform: translateY(-3px);
}

/* Responsive Design */
@media (max-width: 768px) {
    .login_form_wrapper {
        padding: 20px;
    }

    .login_image_wrapper {
        display: none;
    }
}
    </style>
    
</head>
<body>
    <input type="hidden" id="Response" value="<%=request.getAttribute("Response")%>">
    <div class="login_main_wrapper">
        <!-- Header Section -->
        <div class="header_section">
            <nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <img src="assert/logo1.png" alt="Logo" width="70" height="70" class="d-inline-block align-text-top">
                        <span class="ms-2">MEGA CITY CAB SERVICE</span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item"><a class="nav-link" href="#">Welcome</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Types</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Select Your Choice</a></li>
                            <li class="nav-item"><a class="nav-link" href="#">Offer</a></li>
                            <li class="nav-item"><a class="nav-link btn btn-light" href="login.html">Become a Member</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <!-- Body Section -->
        <div class="page_body_main_wrapper">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-6">
                        <div class="login_form_wrapper p-5 rounded shadow-lg">
                            <h2 class="mb-4 text-center">Login to Your Account</h2>
                            <p class="text-muted text-center mb-4">Fill your details below</p>
                            <form id="loginForm" action="Login" method="get">
                                <div class="mb-3">
                                    <label for="username" class="form-label">User Name</label>
                                    <input type="text" name="name" id="username" class="form-control" placeholder="User Name" required>
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" name="pass" id="password" class="form-control" placeholder="Your Password" required>
                                </div>
                                <div class="mb-3 text-end">
                                    <a href="forgot.jsp" class="text-decoration-none">Forgot Password?</a>
                                </div>
                                <div class="mb-3 text-center">
                                    <p class="mb-0">Don't have an account? <a href="register.jsp" class="text-decoration-none">Register</a></p>
                                </div>
                                <div class="d-grid">
                                    <button type="submit" id="loginBtn" class="btn btn-primary btn-lg">Login</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 d-none d-md-block">
                        <div class="login_image_wrapper text-center">
                            <img src="assert/blog-1.png" alt="Login Image" class="img-fluid rounded-circle shadow-lg">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <div class="footer_wrapper bg-dark text-white py-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 text-center">
                        <h5>CONTACT</h5>
                        <p>5 Colombo, 2002 Paris</p>
                        <p>Call - +94719208046</p>
                        <p>megacitycabservice@gmail.com</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <h5>JOIN OUR MAILING LIST</h5>
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" placeholder="Email">
                            <button class="btn btn-warning" type="button">Subscribe</button>
                        </div>
                    </div>
                    <div class="col-md-4 text-center">
                        <h5>WORKING HOURS</h5>
                        <p>Mon-Fri 7.00am - 10.00pm</p>
                        <p>Sat: 7.00am - 6.00pm</p>
                        <p>Sun: 8.00am - 6.00pm</p>
                    </div>
                </div>
                <div class="text-center mt-3">
                    <p class="mb-0">Copyright - Mega City Cab Service 2024</p>
                </div>
            </div>
        </div>
    </div>

    <!-- SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JS -->
    <script>
        $(document).ready(function () {
            const response = $("#Response").val();
            if (response === "success") {
                Swal.fire({
                    title: "Success!",
                    text: "You have successfully logged in.",
                    icon: "success",
                    confirmButtonColor: "#3085d6",
                }).then(() => {
                    window.location.href = "index.jsp"; // Redirect after success
                });
            } else if (response === "failed") {
                Swal.fire({
                    title: "Error!",
                    text: "Invalid username or password.",
                    icon: "error",
                    confirmButtonColor: "#d33",
                });
            }
        });
    </script>
</body>
</html>