package com.megacab.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.megacab.model.RegisterModel;

public class RegisterRepo {

    private static final String URL = "jdbc:mysql://127.0.0.1:3306/megacab?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public String saveUser(RegisterModel registerModel) {
        try {
            // Ensure the MySQL driver is loaded
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the database connection
            try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement pst = con.prepareStatement("INSERT INTO registered_user_details (name, nic, address, password) VALUES (?, ?, ?, ?)")) {

                // Set values for the prepared statement
                pst.setString(1, registerModel.getUserType());
                pst.setString(2, registerModel.getUserEmail());
                pst.setString(3, registerModel.getUserTel());
                pst.setString(4, registerModel.getuPass());

                // Execute the query and check if it was successful
                int rowCount = pst.executeUpdate();
                return (rowCount > 0) ? "Registration Successful" : "Registration Unsuccessful";
            }
        } catch (ClassNotFoundException e) {
            return "Error: MySQL driver not found.";
        } catch (SQLException e) {
            return "Database Error: " + e.getMessage();
        }
    }
}
