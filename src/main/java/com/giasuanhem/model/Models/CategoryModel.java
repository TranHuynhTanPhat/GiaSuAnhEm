package com.giasuanhem.model.Models;

public class CategoryModel {
	 private String _id;
	 private String name;
	 private float style;


	 // Getter Methods 

	 public String get_id() {
	  return _id;
	 }

	 public String getName() {
	  return name;
	 }

	 public float getStyle() {
	  return style;
	 }

	 // Setter Methods 

	 public void set_id(String _id) {
	  this._id = _id;
}

	 public void setName(String name) {
	  this.name = name;
	 }

	 public void setStyle(float style) {
	  this.style = style;
	 }
	}