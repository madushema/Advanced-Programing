<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/main.css">
    <link rel="stylesheet" href="CSS/cDescription.css">
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

        .user_indicator a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .user_indicator a:hover {
            color: #ffdd57;
        }

        /* Body Section */
        .page_body {
            padding: 40px 20px;
        }

        .p_des_main_wrapper {
            display: flex;
            gap: 40px;
            align-items: center;
        }

        .left_p_dec {
            flex: 1;
        }

        .item_image {
            width: 100%;
            height: 400px;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .item_image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .right_p_dec {
            flex: 1;
        }

        .r_item_name {
            font-size: 2rem;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
        }

        .r_price_wrapper {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        .r_price_wrapper p {
            margin: 0;
        }

        .r_price_wrapper button {
            background: linear-gradient(135deg, #007bff, #00bfff);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 25px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .r_price_wrapper button:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(0, 123, 255, 0.5);
        }
    </style>
    <title>Cab Description</title>
</head>
<body>
<div class="page_main_wrapper">
    <div class="page_header">
        <div class="page_header_sub_wrapper">
            <div class="company_logo">
                <h1>MegaCityCab</h1>
            </div>
            <div class="user_indicator">
                <img src="assert/online-shopping.png" width="25" height="25" alt="">
                <img src="assert/heart.png" width="25" height="25" alt="">
                <img src="assert/user.png" width="25" height="25" alt="">
                <a href="logout.jsp">Logout</a>
            </div>
        </div>
    </div>

    <div class="page_body">
        <div class="p_des_main_wrapper">
            <%
                String url = "jdbc:mysql://localhost:3306/megacab";
                String user = "root";
                String password = "root";
                Connection con = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                int vehicleId = Integer.parseInt(request.getParameter("id"));
                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection(url, user, password);
                    String query = "SELECT * FROM vehicles WHERE vehicle_id = ?";
                    pstmt = con.prepareStatement(query);
                    pstmt.setInt(1, vehicleId);
                    rs = pstmt.executeQuery();
                    
                    if (rs.next()) {
                        String model = rs.getString("vehicle_model");
                        String price = rs.getString("vehicle_rent");
                        String name = rs.getString("vehicle_name");
                        String number = rs.getString("vehicle_number");
                        String type = rs.getString("vehicle_type");
                        
                        // Convert image BLOB to base64 for display
                        byte[] imgData = rs.getBytes("vehicle_image");
                        String base64Image = "";
                        if (imgData != null) {
                            base64Image = "data:image/jpeg;base64," + java.util.Base64.getEncoder().encodeToString(imgData);
                        }
            %>
            <div class="left_p_dec">
                <div class="item_image">
                    <img src="<%= base64Image %>" width="100%" height="100%" alt="Vehicle Image">
                </div>
            </div>
            <div class="right_p_dec">
                <p class="r_item_name"><%= model %></p>
                <p class="r_item_name"><%= name %></p>
                <p class="r_item_name"><%= type %></p>
                <div class="r_price_wrapper">
                    <p>LKR <%= price %></p>
                </div>
                <div class="r_price_wrapper">
                    <a href="chekout.jsp?id=<%= request.getParameter("id") %>">
                        <button>Rent Now</button>
                    </a>
                </div>
            </div>
            <%
                    } else {
                        out.println("<p>Vehicle not found.</p>");
                    }
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (con != null) con.close();
                    } catch (SQLException se) {
                        se.printStackTrace();
                    }
                }
            %>
        </div>
    </div>
</div>
</body>
</html>