package com.giasuanhem.model.Models;

import java.util.ArrayList;

public class TutorModel {
	private int id;
	private String name;
	private String address;
	private String email;
	private String phone;
	private String school;
	private String department;
	private String gender;
	private String graduate_year;
	private String isnow;
	private String describe;
	private int sobuoi;
	private String birth_year;
	private Object id_account;
	private String created_at;
	Object subjects = new ArrayList<Object>();
	Object classes = new ArrayList<Object>();
	Object categories = new ArrayList<Object>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGraduate_year() {
		return graduate_year;
	}

	public void setGraduate_year(String graduate_year) {
		this.graduate_year = graduate_year;
	}

	public String getIsnow() {
		return isnow;
	}

	public void setIsnow(String isnow) {
		this.isnow = isnow;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public int getSobuoi() {
		return sobuoi;
	}

	public void setSobuoi(int sobuoi) {
		this.sobuoi = sobuoi;
	}

	public String getBirth_year() {
		return birth_year;
	}

	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}

	public Object getId_account() {
		return id_account;
	}

	public void setId_account(Object id_account) {
		this.id_account = id_account;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public Object getSubjects() {
		return subjects;
	}

	public void setSubjects(Object subjects) {
		this.subjects = subjects;
	}

	public Object getClasses() {
		return classes;
	}

	public void setClasses(Object classes) {
		this.classes = classes;
	}

	public Object getCategories() {
		return categories;
	}

	public void setCategories(Object categories) {
		this.categories = categories;
	}

}
