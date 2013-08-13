package com.amatic.rc.dto;


public class ChToken {

	private String token;
	private long age;
	
	public ChToken() {

	}
	
	public ChToken(String token, long age) {
		super();
		this.token = token;
		this.age = age;
	}
	
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}

	public long getAge() {
		return age;
	}

	public void setAge(long age) {
		this.age = age;
	}
	
	
}
