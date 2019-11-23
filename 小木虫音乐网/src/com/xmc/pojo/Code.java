package com.xmc.pojo;

import org.springframework.stereotype.Component;

@Component("code")
public class Code {
	private Integer id;
	private String codename;
	private String filepath;
	private String intro;
	private User owner;
	public Code() {
	}
	public Code(Integer id, String codename, String filepath, String intro,User owner) {
		this.id = id;
		this.codename = codename;
		this.filepath = filepath;
		this.intro = intro;
		this.owner = owner;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCodename() {
		return codename;
	}
	public void setCodename(String codename) {
		this.codename = codename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public User getOwner() {
		return owner;
	}
	public void setOwner(User owner) {
		this.owner = owner;
	}
	@Override
	public String toString() {
		return "Code [id=" + id + ", codename=" + codename + ", filepath="
				+ filepath + ", intro=" + intro + ", owner=" + owner + "]";
	}
	
	
}
