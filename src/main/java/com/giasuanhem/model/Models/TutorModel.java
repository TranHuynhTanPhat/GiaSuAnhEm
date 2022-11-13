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
	 List < SubjectModel > subjects = new ArrayList < SubjectModel > ();
	 List < ClassModel > classes = new ArrayList < ClassModel > ();
	 List< String > teachAreas = new ArrayList < String > ();
	 private String vehicle;
	 private float sobuoi;
	 private String gender;
	 private String birthYear;
	 private String graduateYear;
	 private String isNow;
	 private String describe;
	 private float __v;


	 // Getter Methods 

	 public String get_id() {
	  return _id;
	 }

	 public String getName() {
	  return name;
	 }

	 public String getAddress() {
	  return address;
	 }

	 public String getEmail() {
	  return email;
	 }

	 public String getPhone() {
	  return phone;
	 }

	 public String getSchool() {
	  return school;
	 }

	 public String getDepartment() {
	  return department;
	 }

	 public String getVehicle() {
	  return vehicle;
	 }

	 public float getSobuoi() {
	  return sobuoi;
	 }

	 public String getGender() {
	  return gender;
	 }

	 public String getBirthYear() {
	  return birthYear;
	 }

	 public String getGraduateYear() {
	  return graduateYear;
	 }

	 public String getIsNow() {
	  return isNow;
	 }

	 public String getDescribe() {
	  return describe;
	 }

	 public float get__v() {
	  return __v;
	 }

	 // Setter Methods 

	 public void set_id(String _id) {
	  this._id = _id;
	 }

	 public void setName(String name) {
	  this.name = name;
	 }

	 public void setAddress(String address) {
	  this.address = address;
	 }

	 public void setEmail(String email) {
	  this.email = email;
	 }

	 public void setPhone(String phone) {
	  this.phone = phone;
	 }

	 public void setSchool(String school) {
	  this.school = school;
	 }

	 public void setDepartment(String department) {
	  this.department = department;
	 }

	 public void setVehicle(String vehicle) {
	  this.vehicle = vehicle;
	 }

	 public void setSobuoi(float sobuoi) {
	  this.sobuoi = sobuoi;
	 }

	 public void setGender(String gender) {
	  this.gender = gender;
	 }

	 public void setBirthYear(String birthYear) {
	  this.birthYear = birthYear;
	 }

	 public void setGraduateYear(String graduateYear) {
	  this.graduateYear = graduateYear;
	 }

	 public void setIsNow(String isNow) {
	  this.isNow = isNow;
	 }

	 public void setDescribe(String describe) {
	  this.describe = describe;
	 }

	 public void set__v(float __v) {
	  this.__v = __v;
	 }
	 
	 public List<SubjectModel> getSubjects() {
			return subjects;
		}

		public void setSubjects(List<SubjectModel> subjects) {
			this.subjects = subjects;
		}

		public List<ClassModel> getClasses() {
			return classes;
		}

		public void setClasses(List<ClassModel> classes) {
			this.classes = classes;
		}

		public List<String> getTeachAreas() {
			return teachAreas;
		}

		public void setTeachAreas(List<String> teachAreas) {
			this.teachAreas = teachAreas;
		}

	}
