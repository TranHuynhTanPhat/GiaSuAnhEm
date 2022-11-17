package com.giasuanhem.model.Models;

public class ClassModel {
	 private String _id;
	 private String name;
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

	 public String getName() {
	  return name;
	 }

	 // Setter Methods 

	 public void set_id(String _id) {
	  this._id = _id;
	 }

	 public void setName(String name) {
	  this.name = name;
	 }
	}