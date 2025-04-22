package com.coursework.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import com.coursework.config.DbConfig;
import com.coursework.model.PatientModel;

public class RegisterService {

    private Connection dbConn;

    public RegisterService() {
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

    public Boolean addPatient(PatientModel patientModel) {
        if (dbConn == null) {
            System.err.println("Database connection is not available.");
            return false;
        }

        String insertQuery = "INSERT INTO patient "
                + "(patientName, patientAge, patientSex, patientWeight, "
                + "bloodGroup, contactNumber, emailId, patientAddress, allergies, "
                + "insuranceId, attendantName, attendantContact, registrar_name) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = dbConn.prepareStatement(insertQuery)) {
            stmt.setString(1, patientModel.getPatientName());
            stmt.setInt   (2, patientModel.getPatientAge());
            stmt.setString(3, patientModel.getPatientSex());
            stmt.setInt   (4, patientModel.getPatientWeight());
            stmt.setString(5, patientModel.getBloodGroup());
            stmt.setString(6, patientModel.getContactNumber());
            stmt.setString(7, patientModel.getEmailId());
            stmt.setString(8, patientModel.getPatientAddress());
            stmt.setString(9, patientModel.getAllergies());
            stmt.setInt   (10, patientModel.getInsuranceId());
            stmt.setString(11, patientModel.getAttendantName());
            stmt.setString(12, patientModel.getAttendantContact());
            stmt.setString(13, patientModel.getRegistrar_name());

            int rows = stmt.executeUpdate();
            System.out.println("▶ addPatient(): rows inserted = " + rows);
            dbConn.commit();
            return rows > 0;
        } catch (SQLException e) {
            System.err.println("Error in addPatient(): " + e.getMessage());
            e.printStackTrace();
            try { dbConn.rollback(); } catch (Exception ignore) {}
            return false;
        }
    }
}
