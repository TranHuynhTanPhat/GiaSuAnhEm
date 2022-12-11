package com.giasuanhem.model.Models;

import java.util.List;

public class ResponseModel {
	private Boolean status;
	private String message;
	private Object error;
	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Object getError() {
		return error;
	}

	public void setError(Object error) {
		this.error = error;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	private Object data;

	// Getter Methods

	public String getMessage() {
		return message;
	}

	// Setter Methods

	public void setMessage(String message) {
		this.message = message;
	}
}
