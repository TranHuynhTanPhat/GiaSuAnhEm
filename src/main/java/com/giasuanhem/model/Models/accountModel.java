package com.giasuanhem.model.Models;

public class accountModel {
	private String _id;
	private String name;
	private String userName;
	private String passWord;
	private String email;
	private int state;

	// Getter Methods

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
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

	public String getPassWord() {
		return passWord;
	}

	// Setter Methods

	public void set_id(String id) {
		this._id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
}
