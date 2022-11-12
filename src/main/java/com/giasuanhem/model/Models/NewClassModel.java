package com.giasuanhem.model.Models;

import java.util.ArrayList;
import java.util.List;

public class NewClassModel {
	private String _id;
	private String address;
	private String district;
	private int sobuoi;
	private String time;
	private int salary;
	private String require;
	private int status;
	List<String> category = new ArrayList<String>();
	List<String> classes = new ArrayList<String>();
	List<String> subjects = new ArrayList<String>();
	private float __v;

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public int getSobuoi() {
		return sobuoi;
	}

	public void setSobuoi(int sobuoi) {
		this.sobuoi = sobuoi;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getRequire() {
		return require;
	}

	public void setRequire(String require) {
		this.require = require;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public List<String> getCategory() {
		return category;
	}

	public void setCategory(List<String> category) {
		this.category = category;
	}

	public List<String> getClasses() {
		return classes;
	}

	public void setClasses(List<String> classes) {
		this.classes = classes;
	}

	public List<String> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<String> subjects) {
		this.subjects = subjects;
	}

	public float get__v() {
		return __v;
	}

	public void set__v(float __v) {
		this.__v = __v;
	}

}