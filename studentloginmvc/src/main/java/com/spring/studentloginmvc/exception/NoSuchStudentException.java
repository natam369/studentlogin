package com.spring.studentloginmvc.exception;

public class NoSuchStudentException extends Exception{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public NoSuchStudentException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoSuchStudentException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public NoSuchStudentException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public NoSuchStudentException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public NoSuchStudentException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}


}
