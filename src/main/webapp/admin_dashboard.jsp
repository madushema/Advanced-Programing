<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Dashboard</title>
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

.admin-container {
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

.admin-dash-main-wrapper {
    padding: 40px 20px;
}

.admin-dash-left-wrapper {
    width: 100%;
}

.tab-btn-main-wrapper {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
}

.tab-btn-main-wrapper button {
    background: linear-gradient(135deg, #007bff, #00bfff);
    border: none;
    padding: 10px 20px;
    border-radius: 10px;
    color: white;
    font-size: 1rem;
    font-weight: bold;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.tab-btn-main-wrapper button:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 15px rgba(0, 123, 255, 0.5);
}

/* Table Styles */
.table-container {
    overflow-x: auto;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table th, table td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

table th {
    background: linear-gradient(135deg, #007bff, #00bfff);
    color: white;
}



.btn, .btn1 {
    padding: 8px 16px;
    border: none;
    border-radius: 5px;
    font-size: 0.9rem;
    font-weight: bold;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.btn {
    background: #28a745;
    color: white;
}

.btn1 {
    background: #dc3545;
    color: white;
}

.btn:hover, .btn1:hover {
    transform: translateY(-3px);
}

/* Form Styles */
.form-container {
    display: flex;
    gap: 20px;
    margin-top: 20px;
}

.form-group {
    flex: 1;
}

.form-group label {
    font-size: 1rem;
    font-weight: 500;
    margin-bottom: 5px;
    display: block;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-bottom: 15px;
    font-size: 1rem;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

.form-group input:focus {
    border-color: #007bff;
    box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);
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
    border-radius: 5px;
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
    <script>
        function openCity(cityName) {
            var i;
            var x = document.getElementsByClassName("city");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            document.getElementById(cityName).style.display = "block";
        }

        function deleteBooking(bookingId) {
            if (confirm("Are you sure you want to delete this booking?")) {
                fetch("DeleteBookingServlet?id=" + bookingId)
                    .then(response => response.text())
                    .then(data => {
                        console.log("Response from server:", data); // Debugging

                        if (data.trim() === "success") {
                            alert("Booking deleted successfully");
                            let bookingRow = document.getElementById("booking-" + bookingId);
                            if (bookingRow) {
                                bookingRow.remove(); // Remove row dynamically
                            } else {
                                alert("Booking row not found in the table.");
                            }
                        } else if (data.trim().startsWith("error")) {
                            alert("Server error: " + data);
                        } else {
                            alert("Error deleting booking");
                        }
                    })
                    .catch(error => console.error("Fetch error:", error));
            }
        }
    </script>
</head>
<body>
    <div class="admin-container">
        <!-- Header Section -->
        <div class="t1-header">
            <div class="page_header">
                <div class="page_header_sub_wrapper">
                    <div class="company_logo">
                        <h1>MegaCab</h1>
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
                        <p id="u_name">Admin</p>
                        <a href="logout.jsp">Logout</a>
                    </div>
                </div>
            </div>
            <div class="hero">
                <div class="admin-dash-main-wrapper">
                    <div class="admin-dash-left-wrapper">
                        <div class="tab-btn-main-wrapper">
                            <button class="w3-bar-item w3-button" onclick="openCity('London')">Manage Vehicles</button>
                            <button class="w3-bar-item w3-button" onclick="openCity('Paris')">Manage Rents</button>
                            <button class="w3-bar-item w3-button" onclick="openCity('Tokyo')">Add Vehicle</button>
                        </div>

                        <!-- Manage Vehicles Section -->
                        <div id="London" class="w3-container city">
                            <h2>Manage Vehicles</h2>
                            <div class="table-container">
                                <table>
                                    <tr>
                                        <th>Vehicle ID</th>
                                        <th>Image</th>
                                        <th>Name</th>
                                        <th>Model</th>
                                        <th>License Plate</th>
                                        <th>Type</th>
                                        <th>Rent (LKR)</th>
                                        <th>Actions</th>
                                    </tr>
                                    <%
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/megacab", "root", "root");
                                            java.sql.PreparedStatement pst = con.prepareStatement("SELECT * FROM vehicles");
                                            java.sql.ResultSet rs = pst.executeQuery();
                                            
                                            while (rs.next()) {
                                                int vehicleId = rs.getInt("vehicle_id");
                                                String name = rs.getString("vehicle_name");
                                                String model = rs.getString("vehicle_model");
                                                String licensePlate = rs.getString("vehicle_number");
                                                String type = rs.getString("vehicle_type");
                                                double rent = rs.getDouble("vehicle_rent");
                                                
                                                // Convert image BLOB to base64 for display
                                                byte[] imgData = rs.getBytes("vehicle_image");
                                                String base64Image = "";
                                                if (imgData != null) {
                                                    base64Image = "data:image/jpeg;base64," + java.util.Base64.getEncoder().encodeToString(imgData);
                                                }
                                    %>
                                    <tr>
                                        <td><%= vehicleId %></td>
                                        <td>
                                            <% if (!base64Image.isEmpty()) { %>
                                                <img src="<%= base64Image %>" alt="Vehicle Image" width="100">
                                            <% } else { %>
                                                No Image
                                            <% } %>
                                        </td>
                                        <td><%= name %></td>
                                        <td><%= model %></td>
                                        <td><%= licensePlate %></td>
                                        <td><%= type %></td>
                                        <td><%= rent %></td>
                                        <td>
                                            <button class="btn"><a href="edit_vehicle.jsp?id=<%= vehicleId %>">Edit</a></button>
                                            <button class="btn1"><a href="delete_vehicle.jsp?id=<%= vehicleId %>">Delete</a></button>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println("Error: " + e.getMessage());
                                        }
                                    %>
                                </table>
                            </div>
                        </div>

                        <!-- Manage Rents Section -->
                        <div id="Paris" class="w3-container city" style="display:none">
                            <h2>Manage Rents</h2>
                            <div class="table-container">
                                <table>
                                    <tr>
                                        <th>Booking ID</th>
                                        <th>Full Name</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>From</th>
                                        <th>To</th>
                                        <th>Vehicle</th>
                                        <th>Price (LKR)</th>
                                        <th>Actions</th>
                                    </tr>
                                    <%
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/megacab", "root", "root");
                                            java.sql.PreparedStatement pst = con.prepareStatement("SELECT * FROM checkout");
                                            java.sql.ResultSet rs = pst.executeQuery();
                                            
                                            while (rs.next()) {
                                                int bookingId = rs.getInt("id");
                                                String fullName = rs.getString("full_name");
                                                String phone = rs.getString("phone");
                                                String email = rs.getString("email");
                                                String fromLocation = rs.getString("from_location");
                                                String toLocation = rs.getString("to_location");
                                                String vehicleModel = rs.getString("vehicle_model");
                                                double rentPrice = rs.getDouble("rent_price");
                                    %>
                                    <tr id="booking-<%= bookingId %>">
                                        <td><%= bookingId %></td>
                                        <td><%= fullName %></td>
                                        <td><%= phone %></td>
                                        <td><%= email %></td>
                                        <td><%= fromLocation %></td>
                                        <td><%= toLocation %></td>
                                        <td><%= vehicleModel %></td>
                                        <td><%= rentPrice %></td>
                                        <td>
                                            <button onclick="deleteBooking(<%= bookingId %>)">Delete</button>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            out.println("Error: " + e.getMessage());
                                        }
                                    %>
                                </table>
                            </div>
                        </div>

                        <!-- Add Vehicle Section -->
                        <div id="Tokyo" class="w3-container city" style="display:none">
                            <h2>Add Vehicle</h2>
                            <form action="AddVehicleServlet" method="post" enctype="multipart/form-data">
                                <div class="form-container">
                                    <div class="form-group">
                                        <label>Vehicle Name:</label>
                                        <input type="text" name="name" required>
                                        <label>Vehicle Model:</label>
                                        <input type="text" name="model" required>
                                        <label>Vehicle Number:</label>
                                        <input type="text" name="number" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Vehicle Type:</label>
                                        <input type="text" name="type" required>
                                        <label>Rent per Day:</label>
                                        <input type="number" name="rent" step="0.01" required>
                                        <label>Vehicle Image:</label>
                                        <input type="file" name="image" accept="image/*" required>
                                    </div>
                                </div>
                                <button type="submit">Add Vehicle</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Section -->
        <div class="page_footer">
            <div class="footer_Section">
                <div class="footer_main_wrapper">
                    <div class="container_one">
                        <h2>MegaCab</h2>
                        <h3>Subscribe</h3>
                        <p>Get 10% off your first ride</p>
                        <input type="email" placeholder="Enter your email">
                        <button>Subscribe</button>
                    </div>
                    <div class="container_one flexgrow_one">
                        <h3>Support</h3>
                        <p>Kurunegala Road, Kurunegala</p>
                        <p>megacab@gmail.com</p>
                        <p>+94717531951</p>
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
                </div>
                <p id="footer_copyright">@ Copyright MegaCab 2024. All right reserved</p>
            </div>
        </div>
    </div>
</body>
</html>