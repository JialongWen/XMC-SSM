package com.xmc.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.xmc.pojo.Code;
import com.xmc.pojo.User;
import com.xmc.service.CodeService;


@Controller
public class CodeController {

	@Autowired
	@Qualifier("codeService")
	CodeService codeService;
	
	
	@RequestMapping(value="/code",method=RequestMethod.POST)
	public ModelAndView uploadCode(@RequestParam("codefile")MultipartFile codefile,
			@RequestParam("intro")String intro,
			HttpSession session,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		User loginUser =  (User)session.getAttribute("loginUser");
		String path = request.getServletContext().getRealPath("/") + "resources\\song\\";
		//交给服务层处理事务返回结束
		Map<String,Object>result =codeService.addCode(codefile,intro,loginUser,path);
		//返回结果值
		Boolean isSucces = (Boolean)result.get("isSucces");
		String errmsg = (String)result.get("errmsg");
		if(isSucces){
			mv.setViewName("redirect:/uploadSucces");
		}else{
			mv.setViewName("boinerrm");
			mv.addObject("errmsg", errmsg);
		}
		return mv;
	}
	
	@RequestMapping("/findcodelist")
	public void findCode(HttpServletResponse response) throws IOException{
		//服务层进行数据提取操作
		List<Code> codelist = codeService.findcodelist();
		//将得到的数组交给JSON遍历发送到页面
		JSONArray date = JSONArray.fromObject(codelist);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;Encoding=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(date);
	}
	
	@RequestMapping("playthis")
	public ModelAndView playthis(Code code){
		ModelAndView mv = new ModelAndView();
		//对传上来的数据进行切割重新装载给临时变量
		String[] accomplished = new String[2];
		String complete = code.getFilepath();
		System.out.println(complete);
		accomplished = complete.split("XMCYYW");
		System.out.println(accomplished[1]);
		String needsong = accomplished[1]+code.getCodename();
		System.out.println(needsong);
		//将变量传给模型
		mv.addObject("needsong",needsong );
		mv.setViewName("redirect:/index");
		//返回给index
		return mv;
	}
	
}
