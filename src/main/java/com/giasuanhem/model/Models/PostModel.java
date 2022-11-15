package com.giasuanhem.model.Models;

public class PostModel {
	 private String _id;
	 private String title;
	 private String body;
	 private float style;
	
	
	 // Getter Methods 
	
	 public String get_id() {
	  return _id;
	 }
	
	 public String getTitle() {
	  return title;
	 }
	
	 public String getBody() {
	  return body;
	 }
	
	 public float getstyle() {
	  return style;
	 }
	
	 // Setter Methods 
	
	 public void set_id(String _id) {
	  this._id = _id;
	 }
	
	 public void setTitle(String title) {
	  this.title = title;
	 }
	
	 public void setBody(String body) {
	  this.body = body;
	 }
	
	 public void setstyle(float style) {
	  this.style = style;
	 }
	}