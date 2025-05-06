package com.coursework.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Date;

import com.coursework.config.DbConfig;
import com.coursework.model.AppointmentModel;


public class AppointmentService {
	
	private Connection dbConn;
	

    /**
     * Constructor to initialize the connection to the database 
     */
    public AppointmentService() {
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
    public Boolean addAppointment(AppointmentModel appointmentModel) {
        if (dbConn == null) {
            System.err.println("Database connection is not available.");
            return null;
        }

        String insertQuery = "INSERT INTO appointment "
                + "(bookingDate, bookingTime, status, patientSymptoms, "
                + "diagnosedDisease, prescriptions, requiredTests, medications) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = dbConn.prepareStatement(insertQuery)) {
            stmt.setDate(1, (Date) appointmentModel.getBookingDate());
            stmt.setTime(2, appointmentModel.getBookingTime());
            stmt.setString(3, appointmentModel.getStatus());
            stmt.setString(4, appointmentModel.getPatientSymptoms());
            stmt.setString(5, appointmentModel.getDiagnosedDisease());
            stmt.setString(6, appointmentModel.getPrescriptions());
            stmt.setString(7, appointmentModel.getRequiredTests());
            stmt.setString(8, appointmentModel.getMedications()); 

            int rows = stmt.executeUpdate();
            System.out.println("addAppointment(): rows inserted = " + rows);
            dbConn.commit();
            return rows > 0;
        } catch (SQLException e) {
            System.err.println("Error in addAppointment(): " + e.getMessage());
            e.printStackTrace();
            try { dbConn.rollback(); } catch (Exception ignore) {}
            return false;
        
        }
    }

	
}
