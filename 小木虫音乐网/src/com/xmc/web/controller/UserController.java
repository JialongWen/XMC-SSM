package com.xmc.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.xmc.mapper.UserDaoMapper;
import com.xmc.pojo.User;
import com.xmc.service.UserService;

@Controller
public class UserController {

	@Autowired
	@Qualifier("userService")
	UserService userService;
	@Autowired
	@Qualifier("userDaoMapper")
	UserDaoMapper userDaoMapper;
	
	@RequestMapping("/login")
	public String login(Model model, User user, HttpSession session){
		//1.获取的数据提交给服务层处理得到结果
		Map<String,Object> result = null; 
		result = userService.isLogin(user);
		//得到的结果如果是正确的那么将用户名存到session中保持登陆状态
		if((Boolean)result.get("isLogin")){
			session.setAttribute("loginUser", result.get("isLoginUser"));
		//如果是错误的那么返回错误信息
		}else{
			session.setAttribute("erremsg", "账号或密码错误!");
		}
		//返回首页去处理信息
		return "redirect:/index";
	}
	@RequestMapping("/logout")
	public String logout(Model model, HttpSession session){
		session.removeAttribute("loginUser");
		return "redirect:/index";
	}
	
	@RequestMapping("/register")
	public String userRegister(User user){
		
		//将数据给服务层处理
		userService.register(user);
		//返回结果成功去登录页
		return "registerSuccess";
	}
	
	@ModelAttribute
	public void getuserbyId(User user,Map<String,Object> m){
		//1.调用服务层查询结果user
		System.out.println(userDaoMapper);
		User user1 = userDaoMapper.findbyId(user);
		//2.将结果user返回给需求直的控制类
		m.put("olduser", user1);
	}
	
	@RequestMapping("/changePassword")
	public ModelAndView changePassword(@ModelAttribute("user") User user, HttpSession session, 
			@RequestParam("oldpassword") String oldpassword){
		ModelAndView mv = new ModelAndView();
		
		User loginUser = (User)session.getAttribute("loginUser");
		
		//先从数据库取出对应id的user对象，作为入参
		//入参的user对象的password值来自于表单填写的新密码
		
		Map<String, Object> result = userService.changePassword(oldpassword, user, loginUser);
		Boolean isSuccess = (Boolean)result.get("isSuccess");
		String message = (String)result.get("message");
		mv.addObject("message", message);
		if(isSuccess){
			mv.setViewName("bizzdone");
		}else{
			mv.setViewName("bizzerror");
		}
		return mv;
	}
	
}
