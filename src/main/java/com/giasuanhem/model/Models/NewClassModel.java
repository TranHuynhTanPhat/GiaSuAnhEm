package com.giasuanhem.model.Models;

import java.util.ArrayList;
import java.util.List;

public class NewClassModel {
	 private String _id;
	 private float id;
	 private String address;
	 private String district;
	 private float sobuoi;
	 private String time;
	 private float salary;
	 private String require;
	 private float status;
	 List < Object > categories = new ArrayList < Object > ();
	 List < Object > classes = new ArrayList < Object > ();
	 List < Object > subjects = new ArrayList < Object > ();
	 private String contact;
	 private String createdAt;
	 private String updatedAt;

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


	 public void setContact(String contact) {
	  this.contact = contact;
	 }
	 
	 public List<Object> getCategories() {
			return categories;
		}

		public void setCategories(List<Object> categories) {
			this.categories = categories;
		}

		public List<Object> getClasses() {
			return classes;
		}

		public void setClasses(List<Object> classes) {
			this.classes = classes;
		}

		public List<Object> getSubjects() {
			return subjects;
		}

		public void setSubjects(List<Object> subjects) {
			this.subjects = subjects;
		}



}