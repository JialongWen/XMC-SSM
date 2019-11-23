package com.xmc.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.xmc.pojo.User;


public interface UserDaoMapper {
	public List<User> findAll();
	public void insert(User user);
	public void updata(User user);
	public void delete(User user);
	public User findbyId(User user);
	public User findByUsername(String owner);
	
}
