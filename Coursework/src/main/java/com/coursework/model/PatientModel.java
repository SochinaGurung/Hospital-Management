package com.coursework.model;

public class PatientModel {

	private String patientName;
	private int patientAge;
	private String patientSex;
	private int patientWeight;
	private String bloodGroup;
	private String contactNumber;
	private String emailId;
	private String patientAddress;
	private String allergies;
	private int insuranceId;
	private String attendantName;
	private String attendantContact;
	private String registrar_name;

	public PatientModel() {
	}

	public PatientModel(String patientName) {
		this.patientName = patientName;
	}
	
	

	public PatientModel(String patientName, int patientAge, String patientSex, int patientWeight, String bloodGroup,
			String contactNumber, String emailId, String patientAddress, String allergies, int insuranceId,
			String attendantName, String attendantContact, String registrar_name) {
		super();
		this.patientName = patientName;
		this.patientAge = patientAge;
		this.patientSex = patientSex;
		this.patientWeight = patientWeight;
		this.bloodGroup = bloodGroup;
		this.contactNumber = contactNumber;
		this.emailId = emailId;
		this.patientAddress = patientAddress;
		this.allergies = allergies;
		this.insuranceId = insuranceId;
		this.attendantName = attendantName;
		this.attendantContact = attendantContact;
		this.registrar_name = registrar_name;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public int getPatientAge() {
		return patientAge;
	}

	public void setPatientAge(int patientAge) {
		this.patientAge = patientAge;
	}

	public String getPatientSex() {
		return patientSex;
	}

	public void setPatientSex(String patientSex) {
		this.patientSex = patientSex;
	}

	public int getPatientWeight() {
		return patientWeight;
	}

	public void setPatientWeight(int patientWeight) {
		this.patientWeight = patientWeight;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPatientAddress() {
		return patientAddress;
	}

	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}

	public String getAllergies() {
		return allergies;
	}

	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}

	public int getInsuranceId() {
		return insuranceId;
	}

	public void setInsuranceId(int insuranceId) {
		this.insuranceId = insuranceId;
	}

	public String getAttendantName() {
		return attendantName;
	}

	public void setAttendantName(String attendantName) {
		this.attendantName = attendantName;
	}

	public String getAttendantContact() {
		return attendantContact;
	}

	public void setAttendantContact(String attendantContact) {
		this.attendantContact = attendantContact;
	}

	public String getRegistrar_name() {
		return registrar_name;
	}

	public void setRegistrar_name(String registrar_name) {
		this.registrar_name = registrar_name;
	}
}
