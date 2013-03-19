package com.amatic.rc.user;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;

import com.dyuproject.openid.OpenIdUser;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Ignore;
import com.googlecode.objectify.annotation.Index;

@Entity
public class User implements Serializable {
	/**
     * 
     */
	private static final long serialVersionUID = -5268433891024599063L;

	@Id
	private String mail;

	@Index
	private String name;

	@Index
	private int votes;

	@Index
	private String ipAddress;

	@Index
	private Date date;

	@Ignore
	private boolean newUser = false;
	@Ignore
	private static int cont = 0;

	public static int getCont() {
		return cont;
	}

	public static void setCont(int cont) {
		User.cont = cont;
	}

	public User() {

	}

	// For skipping user validation
	public User(OpenIdUser openIdUser) {
		this.mail = (String) ((HashMap) openIdUser.getAttributes().get("info"))
				.get("email");
		this.name = (String) ((HashMap) openIdUser.getAttributes().get("info"))
				.get("name");
	}

	public Date getDate() {
		return date;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public String getLogMail() {
		if (this.mail.contains("@")) {
			return mail;
		} else {
			return "Facebook Acct.";
		}
	}

	public String getMail() {
		return mail;
	}

	public String getName() {
		return name;
	}

	public int getVotes() {
		return votes;
	}

	public boolean isNewUser() {
		if (cont == 1 && newUser == true) {
			cont++;
			return newUser;

		} else {
			newUser = false;
			return false;
		}
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNewUser(boolean newUser) {
		if (newUser == true) {
			cont++;
		}
		this.newUser = newUser;
	}

	public void setVotes(int votes) {
		this.votes = votes;
	}

}
