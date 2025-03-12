<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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

        .page_main_wrapper {
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
        .t1-header {
            min-height: 100px; /* Adjust as needed */
        }

        .page_header {
            background: linear-gradient(135deg, #007bff, #00bfff);
            color: white;
            padding: 20px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .page_header_sub_wrapper {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 90%;
            margin: 0 auto;
        }

        .company_logo h1 {
            font-size: 2.5rem;
            color: white;
        }

        .page_search_bar {
            display: flex;
            align-items: center;
        }

        .pgs_main_wrapper {
            display: flex;
            align-items: center;
            gap: 10px;
            background-color: white;
            height: 2.5em;
            width: 20em;
            border-radius: 25px;
            padding: 0 10px;
        }

        .pgs_main_wrapper input {
            height: 100%;
            width: 88%;
            border: none;
            outline: none;
            font-size: 1rem;
        }

        .search_icon img {
            width: 20px;
            height: 20px;
        }

        .user_indicator {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .user_indicator img {
            width: 25px;
            height: 25px;
            transition: transform 0.3s ease;
        }

        .user_indicator img:hover {
            transform: scale(1.2);
        }

        #u_name {
            font-size: 1.2rem;
            font-weight: bold;
            color: white;
        }

        .user_indicator a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .user_indicator a:hover {
            color: #ffdd57;
        }

        /* Hero Section */
        .hero {
            margin-top: 20px;
        }

        .s2_user_selection {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 90%;
            margin: 0 auto;
            padding: 10px 0;
            border-bottom: 2px solid #ddd;
        }

        .s22_indicator {
            display: flex;
            gap: 20px;
        }

        .s2_item {
            display: flex;
            align-items: center;
            gap: 10px;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .s2_item:hover {
            transform: translateY(-3px);
        }

        .s2_item img {
            width: 25px;
            height: 25px;
        }

        .s2_item p {
            font-size: 1rem;
            font-weight: 500;
        }

        .header_image {
            width: 90%;
            height: 70vh;
            margin: 20px auto;
            background-image: url('assert/carousel-2.jpg'); /* Updated path */
            background-size: cover;
            background-position: center;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        /* Body Section */
        .page_body {
            padding: 40px 0;
        }

        .head_compo1 {
            width: 90%;
            margin: 0 auto 20px;
        }

        .head_compo1 h2 {
            font-size: 2rem;
            color: #007bff;
        }

        .supplier_item {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            width: 90%;
            margin: 0 auto;
        }

        .p_item {
            width: 20rem;
            height: 30rem; /* Increased height to fit all content */
            background: white;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .p_item:hover {
            transform: translateY(-10px);
        }

        .pheader {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }

        .instock_compo p {
            font-size: 1rem;
            font-weight: bold;
        }

        .p_img {
            width: 90%;
            height: 10rem;
            margin: 10px auto;
            overflow: hidden;
        }

        .p_img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .item_name {
            font-size: 1.2rem;
            font-weight: bold;
            margin: 10px;
        }

        .item_price {
            font-size: 1.1rem;
            color: #666;
            margin: 10px;
        }

        .item_add_cart_flex {
            display: flex;
            justify-content: flex-end;
            padding: 10px;
        }

        .item_add_cart {
            background: linear-gradient(135deg, #007bff, #00bfff);
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .item_add_cart:hover {
            transform: scale(1.1);
        }

        /* Footer Section */
        .page_footer {
            background: linear-gradient(135deg, #007bff, #00bfff);
            color: white;
            padding: 40px 0;
        }

        .footer_Section {
            width: 90%;
            margin: 0 auto;
        }

        .footer_main_wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
            padding-bottom: 20px;
            border-bottom: 2px solid rgba(255, 255, 255, 0.1);
        }

        .container_one {
            flex: 1;
            min-width: 200px;
        }

        .container_one h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .container_one h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .container_one p {
            font-size: 1rem;
            line-height: 1.6;
        }

        .container_one input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .container_one button {
            background: #ffdd57;
            border: none;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .container_one button:hover {
            transform: translateY(-3px);
        }

        .contact_icon {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }

        .contact_icon img {
            width: 80px;
            height: 80px;
        }

        #footer_copyright {
            text-align: center;
            margin-top: 20px;
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.8);
        }
    </style>
    <title>MegaCityCab</title>
</head>

<body>
    <div class="page_main_wrapper">
        <!-- Header Section -->
        <div class="t1-header">
            <div class="page_header">
                <div class="page_header_sub_wrapper">
                    <div class="company_logo">
                        <h1>MegaCityCab</h1>
                    </div>
                    <div class="page_search_bar">
                        <div class="pgs_main_wrapper">
                            <input type="search" placeholder="Search for anything...." name="" id="">
                            <div class="search_icon">
                                <img src="assert/search.png" alt="" width="20" height="20">
                            </div>
                        </div>
                    </div>
                    <div class="user_indicator">
                        <img src="assert/online-shopping.png" width="25" height="25" alt="">
                        <img src="assert/heart.png" width="25" height="25" alt="">
                        <img src="assert/user.png" width="25" height="25" alt="">
                        <p id="u_name">Madhushan Dhammika</p>
                        <a href="logout.jsp">Logout</a>
                    </div>
                </div>
            </div>
            <div class="hero">
                
                <div class="header_image"></div>
            </div>

            <!-- Body Section -->
            <div class="page_body">
                <div class="head_compo1">
                    <h2>Top Vehicles Available</h2>
                </div>

                <div class="supplier_item">
                    <%
                        // Database connection and querying vehicle details
                        String url = "jdbc:mysql://localhost:3306/megacab";
                        String user = "root";
                        String password = "root";
                        Connection con = null;
                        Statement stmt = null;
                        ResultSet rs = null;

                        try {
                            // Connect to the database
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection(url, user, password);
                            stmt = con.createStatement();
                            String query = "SELECT * FROM vehicles";
                            rs = stmt.executeQuery(query);

                            while (rs.next()) {
                                String model = rs.getString("vehicle_model");
                                String price = rs.getString("vehicle_rent");
                                byte[] imgData = rs.getBytes("vehicle_image");
                                String base64Image = "";
                                if (imgData != null) {
                                    base64Image = "data:image/jpeg;base64," + java.util.Base64.getEncoder().encodeToString(imgData);
                                }
                    %>

                    <div class="p_item">
                        <div class="pheader">
                            <div class="instock_compo">
                                <p><%= model %></p>
                            </div>
                            <img src="assert/thumbs-up.png" width="25" height="25" alt="" />
                        </div>
                        <div class="p_img">
                            <img src="<%= base64Image %>" width="100%" height="100%" alt="Vehicle Image">
                        </div>
                        <p class="item_name"><%= model %></p>
                        <p class="item_price">LKR <%= price %></p>
                        <div class="item_add_cart_flex">
                            <div onclick="window.location.href='productDescription.jsp?id=<%= rs.getInt("vehicle_id") %>'" class="item_add_cart">
                                Rent Now
                            </div>
                        </div>
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        } finally {
                            try {
                                if (rs != null) rs.close();
                                if (stmt != null) stmt.close();
                                if (con != null) con.close();
                            } catch (SQLException se) {
                                se.printStackTrace();
                            }
                        }
                    %>
                </div>
            </div>

            <!-- Footer Section -->
            <div class="page_footer">
                <div class="footer_Section">
                    <div class="footer_main_wrapper">
                        <div class="container_one">
                            <h2>MEGA CITY CAB</h2>
                            <h3>Subscribe</h3>
                            <p>Get 10% off your first order</p>
                            <input type="email" placeholder="Enter your email">
                            <button>Subscribe</button>
                        </div>
                        <div class="container_one flexgrow_one">
                            <h3>Future</h3>
                            <p>Acchive</p>
                            <p>megacitycab@gmail.com</p>
                            <p>..............</p>
                        </div>
                        <div class="container_one flexgrow_two">
                            <h3>Account</h3>
                            <p>My Account</p>
                            <p>Login / Register</p>
                            <p>Cart</p>
                            <p>Wishlist</p>
                            <p>Shop</p>
                        </div>
                        <div class="container_one flexgrow_three">
                            <h3>Quick Link</h3>
                            <p>Privacy Policy</p>
                            <p>Terms of Use</p>
                            <p>FAQ</p>
                            <p>Contact</p>
                        </div>
                        <div class="container_one flexgrow_four">
                            <h3>Download App</h3>
                            <p>Save 3% with app new user only</p>
                            <div class="contact_icon">
                                <div>
                                    <img src="assert/Untitled 1.png" width="80" height="80" alt="">
                                </div>
                                <div>
                                    <img src="assert/GooglePlay.png" alt="">
                                    <img src="assert/download-appstore.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <p id="footer_copyright">@ Copyright MegaCityCab 2025. All right reserved</p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>