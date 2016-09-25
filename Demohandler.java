package com.niit.handler;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.model.UserBean;
import com.niit.service.UserBeanService;
 
@Component
public class Demohandler {
 @Autowired
	UserBeanService userBeanService;
	
	public UserBean initFlow(){
		return new UserBean();
	}  
 
	public String validateDetails(UserBean userBean,MessageContext messageContext){
		String status = "success";
		if(userBean.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getDob().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"dob").defaultText("DateOfBirth cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getMob_no().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mob_no").defaultText("Mob_no cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getBilladd().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"billadd").defaultText("Billing Address cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getShipadd().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"shipadd").defaultText("Shipping Address cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"city").defaultText("City cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getLandmark().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"landmark").defaultText("Landmark cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if(userBean.getConfirmpass().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"confirmpass").defaultText("Confirmpassword cannot be Empty").build());
			status = "failure";
		}
		
		if(status.equals("success"))
		{
			userBeanService.insertRow(userBean);
		}
		
		return status;
	}
}
