package com.coursework.model;

public class DoctorModel {
	public String doctor_name;
	public int doctor_age;
	public String doctor_gender;
	public int doctor_weight;
	public String doctor_blood_group;
	public String doctor_contact_number;
	public String doctor_email;
	public int pan_number;
	public String specialty;
	public String working_type;
	public int working_hours;
	
public DoctorModel() {
		
	}
	
	public DoctorModel(String doctor_name, int doctor_age, String doctor_gender, int doctor_weight,
			String doctor_blood_group, String doctor_contact_number, String doctor_email, int pan_number,
			String specialty, String working_type, int working_hours) {
		super();
		this.doctor_name = doctor_name;
		this.doctor_age = doctor_age;
		this.doctor_gender = doctor_gender;
		this.doctor_weight = doctor_weight;
		this.doctor_blood_group = doctor_blood_group;
		this.doctor_contact_number = doctor_contact_number;
		this.doctor_email = doctor_email;
		this.pan_number = pan_number;
		this.specialty = specialty;
		this.working_type = working_type;
		this.working_hours = working_hours;
	}
	
	
	public DoctorModel(String doctor_name) {
		this.doctor_name=doctor_name;	
	}
	
	
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public int getDoctor_age() {
		return doctor_age;
	}
	public void setDoctor_age(int doctor_age) {
		this.doctor_age = doctor_age;
	}
	public String getDoctor_gender() {
		return doctor_gender;
	}
	public void setDoctor_gender(String doctor_gender) {
		this.doctor_gender = doctor_gender;
	}
	public int getDoctor_weight() {
		return doctor_weight;
	}
	public void setDoctor_weight(int doctor_weight) {
		this.doctor_weight = doctor_weight;
	}
	public String getDoctor_blood_group() {
		return doctor_blood_group;
	}
	public void setDoctor_blood_group(String doctor_blood_group) {
		this.doctor_blood_group = doctor_blood_group;
	}
	public String getDoctor_contact_number() {
		return doctor_contact_number;
	}
	public void setDoctor_contact_number(String doctor_contact_number) {
		this.doctor_contact_number = doctor_contact_number;
	}
	public String getDoctor_email() {
		return doctor_email;
	}
	public void setDoctor_email(String doctor_email) {
		this.doctor_email = doctor_email;
	}
	public int getPan_number() {
		return pan_number;
	}
	public void setPan_number(int pan_number) {
		this.pan_number = pan_number;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getWorking_type() {
		return working_type;
	}
	public void setWorking_type(String working_type) {
		this.working_type = working_type;
	}
	public int getWorking_hours() {
		return working_hours;
	}
	public void setWorking_hours(int working_hours) {
		this.working_hours = working_hours;
	}
	
	
}
