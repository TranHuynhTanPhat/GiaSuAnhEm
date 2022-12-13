package com.giasuanhem.model.Models;

public class SalaryModel {
	private int id;
	private int type_teacher;
	private String two_sessions;
	private String three_sessions;
	private String four_sessions;
	private String five_sessions;
	private String created_at;
	private Object id_category;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getType_teacher() {
		return type_teacher;
	}
	public void setType_teacher(int type_teacher) {
		this.type_teacher = type_teacher;
	}
	
	public String getTwo_sessions() {
		return two_sessions;
	}
	public void setTwo_sessions(String two_sessions) {
		this.two_sessions = two_sessions;
	}
	public String getThree_sessions() {
		return three_sessions;
	}
	public void setThree_sessions(String three_sessions) {
		this.three_sessions = three_sessions;
	}
	
	public String getFour_sessions() {
		return four_sessions;
	}
	public void setFour_sessions(String four_sessions) {
		this.four_sessions = four_sessions;
	}
	public String getFive_sessions() {
		return five_sessions;
	}
	public void setFive_sessions(String five_sessions) {
		this.five_sessions = five_sessions;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public Object getId_category() {
		return id_category;
	}
	public void setId_category(Object id_category) {
		this.id_category = id_category;
	}

	
}