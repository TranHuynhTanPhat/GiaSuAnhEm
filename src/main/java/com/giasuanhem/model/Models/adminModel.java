package com.giasuanhem.model.Models;

public class adminModel {
	private String accessToken;
	private String _id;
	private String name;
	private String userName;

	// Getter Methods

	public String getAccessToken() {
		return accessToken;
	}

	public String get_id() {
		return _id;
	}

	public String getName() {
		return name;
	}

	public String getUserName() {
		return userName;
	}

	// Setter Methods

	public void setAccessToken(String accessToken) {
		this.accessToken = accessToken;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}