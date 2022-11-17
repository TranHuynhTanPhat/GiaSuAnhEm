package com.giasuanhem.model.Models;

public class SalaryModel {
	private String _id;
	private String grade;
	private float styleTeacher;
	private String twoSessions;
	private String threeSessions;
	private String fourSessions;
	private String fiveSessions;
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

	public String getGrade() {
		return grade;
	}

	public float getStyleTeacher() {
		return styleTeacher;
	}

	public String getTwoSessions() {
		return twoSessions;
	}

	public String getThreeSessions() {
		return threeSessions;
	}

	public String getFourSessions() {
		return fourSessions;
	}

	public String getFiveSessions() {
		return fiveSessions;
	}

	// Setter Methods

	public void set_id(String _id) {
		this._id = _id;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public void setStyleTeacher(float styleTeacher) {
		this.styleTeacher = styleTeacher;
	}

	public void setTwoSessions(String twoSessions) {
		this.twoSessions = twoSessions;
	}

	public void setThreeSessions(String threeSessions) {
		this.threeSessions = threeSessions;
	}

	public void setFourSessions(String fourSessions) {
		this.fourSessions = fourSessions;
	}

	public void setFiveSessions(String fiveSessions) {
		this.fiveSessions = fiveSessions;
	}

}