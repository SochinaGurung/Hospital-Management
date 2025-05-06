package com.coursework.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.coursework.model.DoctorModel;
import com.coursework.config.DbConfig;

public class PatientDashboardService {
    private Connection dbConn;
    private boolean isConnectionError = false;

    public PatientDashboardService() {
        try {
            dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            isConnectionError = true;
        }
    }

    public List<DoctorModel> getAllDoctorsInfo() {
        if (isConnectionError) {
            System.out.println("Connection Error");
            return new ArrayList<>();
        }

        String query = "SELECT doctorName, specialty FROM Doctor";
        List<DoctorModel> doctorList = new ArrayList<>();

        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            ResultSet result = stmt.executeQuery();
            while (result.next()) {
                DoctorModel doctor = new DoctorModel();
                doctor.setDoctorName(result.getString("doctorName"));
                doctor.setSpecialty(result.getString("specialty"));
                doctorList.add(doctor);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return doctorList;
    }
}
