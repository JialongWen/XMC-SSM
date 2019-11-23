package com.xmc.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.xmc.mapper.CodeDaoMapper;
import com.xmc.pojo.Code;
import com.xmc.pojo.User;

@Component("codeService")
public class CodeService {

	@Autowired
	@Qualifier("codeDaoMapper")
	CodeDaoMapper codeDaoMapper;
	
	public Map<String, Object> addCode(MultipartFile codefile, String intro,
			User loginUser, String path) {
		Map<String,Object>result = new HashMap<String, Object>();
		
		//文件上传和新增文件的业务逻辑
			//文件路径是否存在的问题
		try {
		File file = new File(path,codefile.getOriginalFilename());
		if(!file.getParentFile().exists()){
			file.getParentFile().mkdir();
			}
		//将文件存放在服务器的指定位置
		codefile.transferTo(file);
		
		/*
		 * 向T_code表中存入数据
		 * id=null 自增
		 * codename="codefile.getName()"
		 * filepath存放好的路径
		 * intro=intro
		 * owner当前登录用户
		 * */
		//将所有的数据封装到一个code对象中
		String codename=codefile.getOriginalFilename();
		String filepath=new String(path.getBytes("GBK"),"UTF-8");
		User owner = loginUser;
	    Code code = new Code(null, codename,filepath,intro,owner);
		//将code对象交给CodeDaoImpl进行存储处理
	    codeDaoMapper.insert(code);
		//返回结果集
		//存储成功往result里存入isSucces=true
		result.put("isSucces", true);
		} catch (Exception e) {
			result.put("isSucces", false);
			result.put("errmsg", "歌曲上传失败!");
		}
		return result;
	}

	public List<Code> findcodelist() {
		//操作CodeCaoImpl获得一个codelist返回给controller
		List<Code> codelist = null;
		codelist = codeDaoMapper.findAll();
		return codelist;
	}

	
	
}
