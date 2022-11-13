package com.giasuanhem.model.Models;

public class PostModel {
	 private String _id;
	 private String title;
	 private String body;
	 private float __v;
	
	
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
	
	 public float get__v() {
	  return __v;
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
	
	 public void set__v(float __v) {
	  this.__v = __v;
	 }
	}