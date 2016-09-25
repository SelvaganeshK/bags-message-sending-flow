package com.niit.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Send_Message;

@Controller
public class HandleController {

	public HandleController() {
		// TODO Auto-generated constructor stub
		System.out.println("inside SMS controller");
	}

	@RequestMapping("msg")
	public String homePage()
	{
		
		return "msg";
	}
	
	@RequestMapping("greeting")
	public String gotoGreeting()
	{
		Send_Message sm=new Send_Message();
		sm.sendSMS();
		return "greeting";
	}
	
}
