package com.amatic.rc.dto;

import java.io.Serializable;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class Theme implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8626212339927156322L;
	@Id
	Long id;
	@Index
	String url;
	@Index
	String name;

	// Ref User

	public Theme() {

	}

	public Theme(String url, String name) {
		this.url = url;
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getUrl() {
		return url;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
