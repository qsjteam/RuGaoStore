package com.qsj.service.ex;

public class PasswordNotMatchException extends RuntimeException {
	
	private static final long serialVersionUID = 1L;
	public PasswordNotMatchException(){
		
	}
	public PasswordNotMatchException(String message){
		super(message);
	}
}
