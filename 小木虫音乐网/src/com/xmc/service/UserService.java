package com.xmc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.xmc.mapper.UserDaoMapper;
import com.xmc.pojo.User;


@Component("userService")
public class UserService {
	@Autowired
	@Qualifier("userDaoMapper")
	UserDaoMapper userDaoMapper;
	public Map<String, Object> isLogin(User user) {
		Map<String,Object> result = new HashMap<String, Object>();
		List<User> userlist = null;
		//调用Dao层获得数据库数据进行比对
		userlist = userDaoMapper.findAll();
		result.put("isLogin", false);
		for(User users: userlist){
			//得到结果集如果为真那么向result中存入isLoginUser 和 isLogin = true
			if(users.getUsername().equals(user.getUsername())&&users.getPassword().equals(user.getPassword())){
				result.put("isLogin", true);
				result.put("isLoginUser", user);
				break;
			}
		}
		//将结果集result返回给控制器处理
		return result;
	}

	public Map<String, Object> changePassword(String oldpassword, User user, User loginUser) {
		Map<String, Object> result = new HashMap<String, Object>();
		
		//将原密码（表单填写的）oldpassword 与旧密码（数据库中的）loginUser.getPassword()进行比对
		if(oldpassword.equals(loginUser.getPassword())){
			//一致：将入参的user更新到数据库中，去成功页面，显示成功信息
			
			userDaoMapper.updata(user);

			result.put("isSuccess", true);
			result.put("message", "修改密码成功！");
		}else{
			//否则：有错误信息，去失败页面，显示失败信息
			result.put("isSuccess", false);
			result.put("message", "原密码不正确，拒绝修改密码！");
		}
		
		return result;
	}

	public void register(User user) {
		
		//调用DaoImpl层插入数据
		userDaoMapper.insert(user);
		
	}

}
