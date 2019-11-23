package com.xmc.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	public static List<String> URLS = null;
	static{
		URLS = new ArrayList<String>();
		URLS.add("/upload");
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String method = request.getMethod();
		String url = request.getServletPath();
		if(method.equalsIgnoreCase("GET")&&URLS.contains(url)){
			if(request.getSession().getAttribute("loginUser")==null){
				//未登录状态跳转到提示页面
				response.sendRedirect("not_login");
				return false;
			}else{
			return true;
			}
		}else{
			return true;
		}
	}

	
	
}
