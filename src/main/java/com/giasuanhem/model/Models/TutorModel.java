package com.giasuanhem.model.Models;

import java.util.ArrayList;
import java.util.List;

public class TutorModel {
	private String _id;
	private String name;
	private String address;
	private String email;
	private String phone;
	private String school;
	private String department;
	List<Object> subjects = new ArrayList<Object>();
	List<Object> classes = new ArrayList<Object>();
	List<Object> teachAreas = new ArrayList<Object>();
	private String vehicle;
	private float sobuoi;
	private String gender;
	private String birthYear;
	private String graduateYear;
	private String createdAt;
	private String updatedAt;
	private String isNow;
	private String describe;
	// Getter Methods

	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public List<Object> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Object> subjects) {
		this.subjects = subjects;
	}

	public List<Object> getClasses() {
		return classes;
	}

	public void setClasses(List<Object> classes) {
		this.classes = classes;
	}

	public List<Object> getTeachAreas() {
		return teachAreas;
	}

	public void setTeachAreas(List<Object> teachAreas) {
		this.teachAreas = teachAreas;
	}

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public float getSobuoi() {
		return sobuoi;
	}

	public void setSobuoi(float sobuoi) {
		this.sobuoi = sobuoi;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	public String getGraduateYear() {
		return graduateYear;
	}

	public void setGraduateYear(String graduateYear) {
		this.graduateYear = graduateYear;
	}

	public String getIsNow() {
		return isNow;
	}

	public void setIsNow(String isNow) {
		this.isNow = isNow;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

}
