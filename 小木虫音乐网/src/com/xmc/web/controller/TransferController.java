package com.xmc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TransferController {
	
	@RequestMapping("/home")
	public String transfer(){
		return "login";
	}
	@RequestMapping("/index")
	public String transferIndex(){
		return "index";
	}
	@RequestMapping("/toLogin")
	public String transferLogin(){
		return "login";
	}
	@RequestMapping("/toRegister")
	public String transferLogout(){
		return "register";
	}
	@RequestMapping("/tochangePasswoed")
	public String tochangePasswoed(){
		return "changePasswoed";
	}
	@RequestMapping("/registerSuccess")
	public String toRegisterSuccess(){
		return "registerSuccess";
	}
	@RequestMapping("/upload")
	public String toUpload (){
		return "upload";
	}
	@RequestMapping("/uploadSucces")
	public String toUploadSucces (){
		return "uploadSucces";
	}
	@RequestMapping("/not_login")
	public String toNot_login (){
		return "not_login";
	}
	@RequestMapping("/songslist")
	public String toSongslist (){
		return "songslist";
	}
}
