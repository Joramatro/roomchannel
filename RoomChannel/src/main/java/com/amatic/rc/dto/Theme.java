package com.amatic.rc.dto;

import java.io.Serializable;
import java.util.Date;

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
	@Index
	private Date date;
	@Index
	private String chatLog;

	public Theme() {

	}

	public Theme(String url) {
		this.url = url;
	}

	// Ref User

	public String getChatLog() {
		return chatLog;
	}

	public Date getDate() {
		return date;
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

	public void setChatLog(String chatLog) {
		this.chatLog = chatLog;
	}

	public void setDate(Date date) {
		this.date = date;
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
