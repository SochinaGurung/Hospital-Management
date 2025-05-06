package com.coursework.config;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

/**
 * It is a configuration class for managing database connections using JDBC.
 */
public class DbConfig {
    
    // Database configuration details
    private static final String DB_NAME = "HospitalManagementSystem";
    private static final String URL = "jdbc:mysql://localhost:3306/" + DB_NAME;
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    // Method to get a database connection
    public static Connection getDbConnection() throws SQLException, ClassNotFoundException {
        System.out.println("Connecting to DB at " + URL);
        
        // Load MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection
        Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);

        // Print confirmation after successful connection
        if (conn != null && !conn.isClosed()) {
            System.out.println(" Successfully connected to the database!");
        } else {
            System.out.println("Connection object is null or closed.");
        }

        return conn;
    }
}
