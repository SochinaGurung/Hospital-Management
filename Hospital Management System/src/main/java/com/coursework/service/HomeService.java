package com.coursework.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.coursework.config.DbConfig;
import com.coursework.model.DoctorModel;
import com.coursework.model.RegisterPatientModel;
import com.coursework.Util.PasswordUtil;


/** Homeservice controls the user login
 * 
 */
public class HomeService {
	
	private Connection dbConn;
	private boolean isConnectionError = false;
	
	/**
	 * This constructor initializes the database connection
	 */
	
	public HomeService() {
		    try {
		        dbConn = DbConfig.getDbConnection(); // Corrected
		        System.out.println(" Database connection established successfully.");
		    } catch (SQLException | ClassNotFoundException ex) {
		        System.err.println(" Database Connection Error: " + ex.getMessage());
		        ex.printStackTrace();
		        isConnectionError = true;
		    }
		}

	
	public Boolean loginUser(RegisterPatientModel patientModel, DoctorModel doctorModel  ) {
			if (isConnectionError) {
				System.out.println("Database Connection is not Available.");
				return null;
			}
			
			String query="SELECT user_id, password FROM patient WHERE name=?";
			try (PreparedStatement stmt = dbConn.prepareStatement(query)){
					stmt.setString(1, patientModel.getPatientName());
					ResultSet result = stmt.executeQuery();
					
					if(result.next()) {
						return validatePassword(result, patientModel);
					}
			}catch (SQLException e) {
				e.printStackTrace();
				return null;
			}
			return false;
	}
			
	private boolean validatePassword(ResultSet result, RegisterPatientModel patientModel) throws SQLException {
		String dbUsername = result.getString("username");
		String dbPassword = result.getString("password");

		return dbUsername.equals(patientModel.getPatientName());
				
	}	
}
