package com.xmc.mapper;

import java.util.List;

import com.xmc.pojo.Code;

public interface CodeDaoMapper {
	public List<Code> findAll();
	public void insert(Code code);
	public void updata(Code code);
	public void delete(Code code);
	
}
