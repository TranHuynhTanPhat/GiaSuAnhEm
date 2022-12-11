package com.giasuanhem.model.Models;

public class CategoryModel {
	private int id;
	private String name;
	private int tyle;
	private String created_at;

	public String getName() {
		return name;
	}

	public float getTyle() {
		return tyle;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public void setTyle(int tyle) {
		this.tyle = tyle;
	}
}