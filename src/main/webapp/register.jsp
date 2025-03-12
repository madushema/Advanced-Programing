<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script defer src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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
    overflow-y: auto; /* Allow vertical scrolling */
}

.login_main_wrapper {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

/* Header Section */
.header_section {
    background: linear-gradient(135deg, #007bff, #00bfff);
    color: white;
    padding: 20px 0;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.abc_header_section {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    margin: 0 auto;
}

.abc_header_section_left {
    display: flex;
    gap: 20px;
}

.abc_header_section_left a {
    color: white;
    text-decoration: none;
    font-size: 1.1rem;
    transition: color 0.3s ease;
}

.abc_header_section_left a:hover {
    color: #ffdd57;
}

.abc_header_section_middle p {
    font-size: 1.5rem;
    font-weight: bold;
}

.abc_header_section_right button {
    background: #ffdd57;
    border: none;
    padding: 10px 20px;
    border-radius: 25px;
    font-size: 1rem;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.abc_header_section_right button:hover {
    background: #ffcc00;
    transform: translateY(-3px);
}

/* Body Section */
.page_body_main_wrapper {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 40px 20px;
}

.body_content {
    background: white;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    display: flex;
    flex-wrap: wrap;
    gap: 40px;
    max-width: 1000px;
    width: 100%;
}

.left_warpper {
    flex: 1;
    min-width: 300px;
}

.left_warpper h2 {
    font-size: 2.5rem;
    color: #007bff;
    margin-bottom: 10px;
}

.left_warpper p {
    font-size: 1.2rem;
    color: #666;
    margin-bottom: 20px;
}

.left_warpper_user_input {
    margin-bottom: 20px;
}

.left_warpper_user_input input {
    width: 100%;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 10px;
    margin-bottom: 15px;
    font-size: 1rem;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

.left_warpper_user_input input:focus {
    border-color: #007bff;
    box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
}

.user_input_tems label {
    font-size: 1.1rem;
    font-weight: 500;
    margin-bottom: 5px;
}

.user_check_box {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-bottom: 20px;
}

.user_check_box input {
    width: 20px;
    height: 20px;
}

.user_check_box p {
    font-size: 0.9rem;
    color: #666;
}

.redirect_loging_page {
    text-align: center;
    margin-top: 20px;
}

.redirect_loging_page a {
    color: #007bff;
    text-decoration: none;
    transition: color 0.3s ease;
}

.redirect_loging_page a:hover {
    color: #0056b3;
}

.footer_btn {
    text-align: center;
}

.footer_btn button {
    background: linear-gradient(135deg, #007bff, #00bfff);
    border: none;
    padding: 15px 30px;
    border-radius: 10px;
    color: white;
    font-size: 1rem;
    font-weight: bold;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.footer_btn button:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 15px rgba(0, 123, 255, 0.5);
}

.right_warpper {
    flex: 1;
    min-width: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* Footer Section */
.footer_wrapper {
    background: linear-gradient(135deg, #007bff, #00bfff);
    color: white;
    padding: 40px 0;
}

.footer_header {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-bottom: 20px;
}

.footer_header_middle h2 {
    font-size: 1.5rem;
}

.middle_section_footer {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-bottom: 20px;
}

.middle_section_footer p {
    font-size: 1rem;
    font-weight: 500;
}

.bottom_section_footer {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-bottom: 20px;
}

.bottom_section_footer p {
    font-size: 0.9rem;
}

.email_address_customize {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-bottom: 20px;
}

.email_address_customize input {
    width: 60%;
    padding: 10px;
    border: none;
    border-radius: 5px;
}

.email_address_customize button {
    background: #ffdd57;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.email_address_customize button:hover {
    background: #ffcc00;
    transform: translateY(-3px);
}

#copyright_2 {
    text-align: center;
    margin-top: 20px;
    font-size: 0.9rem;
    color: rgba(255, 255, 255, 0.8);
}
    </style>
</head>
<body>
    <div class="login_main_wrapper">
        <!-- Header Section -->
        <div class="header_section">
            <div class="abc_header_section">
                <div class="abc_header_section_left">
                    <a href="index.jsp">Overview</a>
                    <a href="gallery.jsp">Gallery</a>
                    <a href="offer.jsp">Offers</a>
                    <a href="facilities.jsp">Facilities</a>
                </div>
                <div class="abc_header_section_middle">
                    <p>MEGA CITY CAB SERVICE</p>
                </div>
                <div class="abc_header_section_right">
                    <a href="login.html"><button>Become a Member</button></a>
                </div>
            </div>
        </div>

        <!-- Body Section -->
        <div class="page_body_main_wrapper">
            <div class="body_content">
                <div class="left_warpper">
                    <form action="Register" method="post">
                        <h2>Create Your Account</h2>
                        <p>Fill your details below</p>
                        <div class="left_warpper_user_input">
                            <div class="user_input_tems">
                                <label for="name">Customer Name</label>
                                <input name="Name" type="text" placeholder="Customer Name" required>
                            </div>
                            <div class="user_input_tems">
                                <label for="nic">NIC</label>
                                <input name="NIC" type="text" placeholder="Your NIC" required>
                            </div>
                            <div class="user_input_tems">
                                <label for="address">Address</label>
                                <input name="Address" type="text" placeholder="Address" required>
                            </div>
                            <div class="user_input_tems">
                                <label for="password">Password</label>
                                <input name="pass" type="password" placeholder="Your Password" required>
                            </div>
                            <div class="user_check_box">
                                <input name="agree" type="checkbox" required>
                                <p>I agree to receive marketing, advertising, and promotional information via email.</p>
                            </div>
                            <div class="user_input_tems redirect_loging_page">
                                <p>If you have an account <a href="login.jsp">Login?</a></p>
                            </div>
                        </div>
                        <div class="footer_btn">
                            <button type="submit">Register</button>
                        </div>
                    </form>
                </div>
                <div class="right_warpper">
                    <!-- Add an image or illustration here if needed -->
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <div class="footer_wrapper">
            <div class="footer_header">
                <div class="footer_header_left"></div>
                <div class="footer_header_middle">
                    <h2>MEGA CITY CAB SERVICE</h2>
                </div>
                <div class="footer_header_right"></div>
            </div>
            <div class="middle_section_footer">
                <div class="middle_section_footer_left">
                    <p>CONTACT</p>
                </div>
                <div class="middle_section_footer_middle">
                    <p>Join our mailing list for updates</p>
                    <p>Get news & offers</p>
                </div>
                <div class="middle_section_footer_right">
                    <p>WORKING HOURS</p>
                </div>
            </div>
            <div class="bottom_section_footer">
                <div class="bottom_section_footer_left">
                    <p>5 Colombo, 2002 Paris</p>
                    <p>Call - +94719208046</p>
                    <p>megacitycabservice@gmail.com</p>
                </div>
                <div class="bottom_section_footer_middle">
                    <div class="email_address_customize">
                        <input type="email" placeholder="Email" />
                        <button>Subscribe</button>
                    </div>
                </div>
                <div class="bottom_section_footer_right">
                    <p>Mon-Fri 7.00am - 10.00pm</p>
                    <p>Sat: 7.00am - 6.00pm</p>
                    <p>Sun: 8.00am - 6.00pm</p>
                </div>
            </div>
            <p id="copyright_2">
                Copyright - Mega City Cab Service 2024
            </p>
        </div>
    </div>
</body>
</html>