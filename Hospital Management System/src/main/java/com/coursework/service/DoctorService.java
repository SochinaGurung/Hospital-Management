package com.coursework.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import com.coursework.config.DbConfig;
import com.coursework.model.DoctorModel;

public class DoctorService {

    private Connection dbConn;

    /**
     * Constructor to initialize the connection to the database 
     */
    public DoctorService() {
        try {
            dbConn = DbConfig.getDbConnection();
            // ensure we commit manually
            if (dbConn != null) {
                dbConn.setAutoCommit(false);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Database connection error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    /**
     * Register a new doctor to the database
     */
    public Boolean addDoctor(DoctorModel doctorModel) {
        if (dbConn == null) {
            System.err.println("Database connection is not available.");
            return null;
        }

        String insertQuery = "INSERT INTO doctor "
                + "(doctorName, doctorAge, doctorGender, doctorWeight, "
                + "bloodGroup, contactNumber, doctorEmail, panNumber, "
                + "specialty, workingType, workingHours) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = dbConn.prepareStatement(insertQuery)) {
            stmt.setString(1, doctorModel.getDoctorName());
            stmt.setInt	(2, doctorModel.getDoctorAge());
            stmt.setString(3, doctorModel.getDoctorGender());
            stmt.setInt(4, doctorModel.getDoctorWeight());
            stmt.setString(5, doctorModel.getBloodGroup());
            stmt.setString(6, doctorModel.getContactNumber());
            stmt.setString(7, doctorModel.getDoctorEmail());
            stmt.setInt(8, doctorModel.getPanNumber()); 
            stmt.setString(9, doctorModel.getSpecialty());
            stmt.setString(10, doctorModel.getWorkingType());
            stmt.setInt(11, doctorModel.getWorkingHours());

            int rows = stmt.executeUpdate();
            System.out.println("addDoctor(): rows inserted = " + rows);
            dbConn.commit();
            return rows > 0;
        } catch (SQLException e) {
            System.err.println("Error in addDoctor(): " + e.getMessage());
            e.printStackTrace();
            try { dbConn.rollback(); } catch (Exception ignore) {}
            return false;
        
        }
    }
}
