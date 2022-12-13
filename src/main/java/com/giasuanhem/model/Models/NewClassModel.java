package com.giasuanhem.model.Models;


public class NewClassModel {
	private int id;
	private String address;
	private String district;
	private int sobuoi;
	private String time;
	private int salary;
	private String require;
	private int status;
	Object categories;
	Object classes;
	Object subjects;
	private String contact;
	private String created_at;

	// Getter Methods

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String createdAt) {
		this.created_at = createdAt;
	}

	public String getAddress() {
		return address;
	}

	public String getDistrict() {
		return district;
	}

	public int getSobuoi() {
		return sobuoi;
	}

	public String getTime() {
		return time;
	}

	public int getSalary() {
		return salary;
	}

	public String getRequire() {
		return require;
	}

	public int getStatus() {
		return status;
	}

	public String getContact() {
		return contact;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public void setRequire(String require) {
		this.require = require;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

//	public String getCategoriesString() {
//		String result = "";
//
//		ObjectMapper mapper = new ObjectMapper();
//		List<CategoryModel> listCate = mapper.convertValue(categories, new TypeReference<List<CategoryModel>>() {
//		});
//
//		for (CategoryModel cate : listCate) {
//			result = result + cate.getName() + ", ";
//		}
//		return result;
//	}

//	public String getClassesString() {
//		String result = "";
//
//		ObjectMapper mapper = new ObjectMapper();
//		List<ClassModel> listCate = mapper.convertValue(classes, new TypeReference<List<ClassModel>>() {
//		});
//
//		for (ClassModel cate : listCate) {
//			result = result + cate.getName() + ", ";
//		}
//		return result;
//	}

//	public String getSubjectString() {
//		String result = "";
//
//		ObjectMapper mapper = new ObjectMapper();
//		List<SubjectModel> listCate = mapper.convertValue(subjects, new TypeReference<List<SubjectModel>>() {
//		});
//
//		for (SubjectModel cate : listCate) {
//			result = result + cate.getName() + ", ";
//		}
//		return result;
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Object getCategories() {
		return categories;
	}

	public void setCategories(Object categories) {
		this.categories = categories;
	}

	public Object getClasses() {
		return classes;
	}

	public void setClasses(Object classes) {
		this.classes = classes;
	}

	public Object getSubjects() {
		return subjects;
	}

	public void setSubjects(Object subjects) {
		this.subjects = subjects;
	}

	public void setSobuoi(int sobuoi) {
		this.sobuoi = sobuoi;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}