package com.fileupload;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class FileMeta {
	String name;
	long size;
	String url;
	String delete_url;
	String delete_type;

	public FileMeta() {
	}

	public FileMeta(String filename, long size, String url) {
		this.name = filename;
		this.size = size;
		this.url = url;
		this.delete_url = url;
		this.delete_type = "DELETE";
	}
}
