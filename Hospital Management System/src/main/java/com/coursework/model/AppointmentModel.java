package com.coursework.model;

import java.sql.Time;
import java.util.Date;


public class AppointmentModel {
	private Date bookingDate;
	private Time bookingTime;
	private String status;
	private String patientSymptoms;
	private String diagnosedDisease;
	private String prescriptions;
	private String requiredTests;
	private String medications;
	
    // Default constructor
	private AppointmentModel() {
	}
	
	public AppointmentModel(Date bookingDate, Time bookingTime, String status, String patientSymptoms,
			String diagnosedDisease, String prescriptions, String requiredTests, String medications) {
		super();
		this.bookingDate = bookingDate;
		this.bookingTime = bookingTime;
		this.status = status;
		this.patientSymptoms = patientSymptoms;
		this.diagnosedDisease = diagnosedDisease;
		this.prescriptions = prescriptions;
		this.requiredTests = requiredTests;
		this.medications = medications;
	}


	public Date getBookingDate() {
		return bookingDate;
	}


	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}


	public Time getBookingTime() {
		return bookingTime;
	}


	public void setBookingTime(Time bookingTime) {
		this.bookingTime = bookingTime;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getPatientSymptoms() {
		return patientSymptoms;
	}


	public void setPatientSymptoms(String patientSymptoms) {
		this.patientSymptoms = patientSymptoms;
	}


	public String getDiagnosedDisease() {
		return diagnosedDisease;
	}


	public void setDiagnosedDisease(String diagnosedDisease) {
		this.diagnosedDisease = diagnosedDisease;
	}


	public String getPrescriptions() {
		return prescriptions;
	}


	public void setPrescriptions(String prescriptions) {
		this.prescriptions = prescriptions;
	}


	public String getRequiredTests() {
		return requiredTests;
	}


	public void setRequiredTests(String requiredTests) {
		this.requiredTests = requiredTests;
	}


	public String getMedications() {
		return medications;
	}


	public void setMedications(String medications) {
		this.medications = medications;
	}
	
	

}
