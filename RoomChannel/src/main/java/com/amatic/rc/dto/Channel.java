package com.amatic.rc.dto;

import java.util.ArrayList;
import java.util.List;

import com.googlecode.objectify.Ref;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import com.googlecode.objectify.annotation.Load;

@Entity
public class Channel {
	@Id
	public Long id;
	@Index
	String key;
	@Index
	Integer nbrViewers;
	@Index
	String name;
	@Load
	Ref<User> user;
	@Index
	List<String> lImages = new ArrayList<String>();

	public Long getId() {
		return id;
	}

	public String getKey() {
		return key;
	}

	public List<String> getlImages() {
		return lImages;
	}

	public String getName() {
		return name;
	}

	public Integer getNbrViewers() {
		return nbrViewers;
	}

	public Ref<User> getUser() {
		return user;
	}

	public User getUserDeref() {
		return Deref.deref(user);
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public void setlImages(List<String> lImages) {
		this.lImages = lImages;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setNbrViewers(Integer nbrViewers) {
		this.nbrViewers = nbrViewers;
	}

	public void setUser(Ref<User> user) {
		this.user = user;
	}

}
