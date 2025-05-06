package com.coursework.model;

public class DoctorModel {
	private int doctorId;
    private String doctorName;
    private int doctorAge;
    private String doctorGender;
    private int doctorWeight;
    private String bloodGroup;
    private String contactNumber;
    private String doctorEmail;
    private int panNumber;
    private String specialty;
    private String workingType;
    private int workingHours;

    // Default constructor
    public DoctorModel() {
    }

    // Constructor with all fields
    public DoctorModel(int doctorId, String doctorName, int doctorAge, String doctorGender, int doctorWeight, String bloodGroup,
                       String contactNumber, String doctorEmail, int panNumber, String specialty, 
                       String workingType, int workingHours) {
        this.doctorName = doctorName;
        this.doctorAge = doctorAge;
        this.doctorGender = doctorGender;
        this.doctorWeight = doctorWeight;
        this.bloodGroup = bloodGroup;
        this.contactNumber = contactNumber;
        this.doctorEmail = doctorEmail;
        this.panNumber = panNumber;
        this.specialty = specialty;
        this.workingType = workingType;
        this.workingHours = workingHours;
    }

    // Getters and Setters
    
    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }
    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public int getDoctorAge() {
        return doctorAge;
    }

    public void setDoctorAge(int doctorAge) {
        this.doctorAge = doctorAge;
    }

    public String getDoctorGender() {
        return doctorGender;
    }

    public void setDoctorGender(String doctorGender) {
        this.doctorGender = doctorGender;
    }

    public int getDoctorWeight() {
        return doctorWeight;
    }

    public void setDoctorWeight(int doctorWeight) {
        this.doctorWeight = doctorWeight;
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

    public String getDoctorEmail() {
        return doctorEmail;
    }

    public void setDoctorEmail(String doctorEmail) {
        this.doctorEmail = doctorEmail;
    }

    public int getPanNumber() {
        return panNumber;
    }

    public void setPanNumber(int panNumber) {
        this.panNumber = panNumber;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getWorkingType() {
        return workingType;
    }

    public void setWorkingType(String workingType) {
        this.workingType = workingType;
    }

    public int getWorkingHours() {
        return workingHours;
    }

    public void setWorkingHours(int workingHours) {
        this.workingHours = workingHours;
    }
}
