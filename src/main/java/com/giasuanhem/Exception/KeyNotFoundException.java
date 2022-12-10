package com.giasuanhem.Exception;

public class KeyNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public KeyNotFoundException(String message) {
		super(message);
	}
}
