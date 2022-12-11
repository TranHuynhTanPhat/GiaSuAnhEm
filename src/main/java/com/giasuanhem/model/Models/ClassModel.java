package com.giasuanhem.model.Models;

public class ClassModel {
	private int id;
	private String name;
	private String created_at;

	// Getter Methods

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getName() {
		return name;
	}

	// Setter Methods

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}
}