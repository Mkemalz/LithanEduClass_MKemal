package com.AbcPortal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value="/") // home page
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/home") // home page
	public ModelAndView index(HttpServletResponse res, HttpServletRequest req, 
			@CookieValue(value = "Email", defaultValue = "") String Email,
			@CookieValue(value = "userId", defaultValue = "") String userId,
			HttpSession session) {
		
		if(!Email.equals("")) {
			// add session
			session.setAttribute("Email", Email);
			session.setAttribute("userId", userId);
			session.setAttribute("isLogin", true);
		}
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="/Thankyou")
	public ModelAndView Thankyou(HttpServletResponse res) throws Exception {
		return new ModelAndView("Thankyou"); 
	}
	
	@RequestMapping(value="/Verified")
	public ModelAndView Verified() throws Exception {
		return new ModelAndView("Verified"); 
	}
	
	@RequestMapping(value="/DashboardUser")
	public ModelAndView DashboardUser() throws Exception {
		return new ModelAndView("DashboardUser"); 
	}
}
