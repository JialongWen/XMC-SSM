package com.xmc.pojo;

import java.sql.Timestamp;

public class User {

	private Integer id;
	private String username;
	private String password;
	private Integer rank;
	private Timestamp registerTime;
	public User() {
		super();
	}
	
	
	
	public User(Integer id, String username, String password, Integer rank,
			Timestamp registerTime) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.rank = rank;
		this.registerTime = registerTime;
	}



	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getRank() {
		return rank;
	}
	public void setRank(Integer rank) {
		this.rank = rank;
	}
	public Timestamp getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(Timestamp registerTime) {
		this.registerTime = registerTime;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", rank=" + rank + ", registerTime="
				+ registerTime + "]";
	}
	
	
	
}
