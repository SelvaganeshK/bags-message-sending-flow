package com.niit.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.UserBean;

@Controller
public class HandlingController {

	public HandlingController() {
		System.out.println("welcome..");
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("/")
	public String gotohome()
	{
		return "home1";
	}
	
	
	@RequestMapping("index")
	public String gotoIndex(){
		return "index";
	}
	@RequestMapping("home")
	public String home(){
		return "memberDetails";
	}

	@RequestMapping("home2")
	public String home2(){
		return "home2";
	}
	
	@RequestMapping("home1")
	public String gotohme()
	{
		return "home1";
	}
	
	@RequestMapping("aboutus")
	public String gotoaboutus()
	{
		return "aboutus";
	}
	
	@RequestMapping("mens")
	public String gotocheckin()
	{
		return "mens";
	}
	
	@RequestMapping("womens")
	public String gotochecki()
	{
		return "womens";
	}
	
	@RequestMapping("travels")
	public String gotocheck()
	{
		return "womens";
	}
	
	@RequestMapping("Login")
	public String gotoLogoi()
	{
		return "Login";
	}
	
	@RequestMapping("categories")
	public String gotocategories()
	{
		return "categories";
	}
	
	@RequestMapping("Register")
	public String gotoRegister(@ModelAttribute("usr")UserBean usr)
	{
		return "Register";
	}
	
//	@RequestMapping(value="saveUser",method=RequestMethod.POST)
//	public String saveUserInfo(@ModelAttribute("usr")UserBean usr)
//	{
//		return "Register";
//	}
	
	
	@RequestMapping(value="/checklogin",method=RequestMethod.POST)
	public String validdateLogin(HttpServletRequest req) {
		String u=req.getParameter("username");
		String pass=req.getParameter("password");
		if ((u.equals("selva")) && (pass.equals("ganesh"))) {
			return "inside";
		}else{return"sorry";
		}
		}
	}

