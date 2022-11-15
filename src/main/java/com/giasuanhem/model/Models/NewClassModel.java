package com.giasuanhem.model.Models;

import java.util.ArrayList;
import java.util.List;

public class NewClassModel {
<<<<<<< HEAD
	 private String _id;
	 private float id;
	 private String address;
	 private String district;
	 private float sobuoi;
	 private String time;
	 private float salary;
	 private String require;
	 private float status;
	 private String created_at;
	 List < CategoryModel > categories = new ArrayList < CategoryModel > ();
	 List < ClassModel > classes = new ArrayList < ClassModel > ();
	 List < SubjectModel > subjects = new ArrayList < SubjectModel > ();
	 private String contact;
=======
	private String _id;
	private String address;
	private String district;
	private int sobuoi;
	private String time;
	private int salary;
	private String require;
	private int status;
	List<CategoryModel> categories = new ArrayList<CategoryModel>();
	List<ClassModel> classes = new ArrayList<ClassModel>();
	List<SubjectModel> subjects = new ArrayList<SubjectModel>();
	private float __v;
	private int id;
	private String contact;
>>>>>>> dang3


	 // Getter Methods 

	 public String get_id() {
	  return _id;
	 }

	 public float getId() {
	  return id;
	 }

	 public String getAddress() {
	  return address;
	 }

	 public String getDistrict() {
	  return district;
	 }

	 public float getSobuoi() {
	  return sobuoi;
	 }

	 public String getTime() {
	  return time;
	 }

	 public float getSalary() {
	  return salary;
	 }

	 public String getRequire() {
	  return require;
	 }

	 public float getStatus() {
	  return status;
	 }

	 public String getCreated_at() {
	  return created_at;
	 }

	 public String getContact() {
	  return contact;
	 }

	 // Setter Methods 

	 public void set_id(String _id) {
	  this._id = _id;
	 }

	 public void setId(float id) {
	  this.id = id;
	 }

	 public void setAddress(String address) {
	  this.address = address;
	 }

	 public void setDistrict(String district) {
	  this.district = district;
	 }

	 public void setSobuoi(float sobuoi) {
	  this.sobuoi = sobuoi;
	 }

	 public void setTime(String time) {
	  this.time = time;
	 }

	 public void setSalary(float salary) {
	  this.salary = salary;
	 }

	 public void setRequire(String require) {
	  this.require = require;
	 }

	 public void setStatus(float status) {
	  this.status = status;
	 }

	 public void setCreated_at(String created_at) {
	  this.created_at = created_at;
	 }

	 public void setContact(String contact) {
	  this.contact = contact;
	 }
	 
	 public List<CategoryModel> getCategories() {
			return categories;
		}

		public void setCategories(List<CategoryModel> categories) {
			this.categories = categories;
		}

		public List<ClassModel> getClasses() {
			return classes;
		}

		public void setClasses(List<ClassModel> classes) {
			this.classes = classes;
		}

		public List<SubjectModel> getSubjects() {
			return subjects;
		}

		public void setSubjects(List<SubjectModel> subjects) {
			this.subjects = subjects;
		}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

}