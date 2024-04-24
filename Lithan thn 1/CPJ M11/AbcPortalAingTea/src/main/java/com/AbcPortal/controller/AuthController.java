package com.AbcPortal.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.AbcPortal.model.UserDetails;
import com.AbcPortal.model.Users;
import com.AbcPortal.service.UserDetailsService;
import com.AbcPortal.service.UsersService;

@Controller
public class AuthController {
	@Autowired
	// @Qualifier(value = "UsersRepository")
	private UsersService us;
	
	@Autowired
	private UserDetailsService ud;
	
	@RequestMapping(value="/Register")
	public ModelAndView Register(HttpSession session) throws Exception {
		return new ModelAndView("Register"); 
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registration(
			@RequestParam("Email") String Email,
			@RequestParam("Password") String Password,
			@RequestParam("FirstName") String FirstName,
			@RequestParam("LastName") String LastName,
			@RequestParam("Dateofbirth") String Dateofbirth,
			Users user, UserDetails userDetails, Model model) throws Exception {
		try {
			user.setEmail(Email);
			user.setPassword(Password);
			user.setRoleId("2");
			us.register(user);
			
			userDetails.setUserId(us.getLastUser().split(",")[0]);
			userDetails.setFirstName(FirstName);
			userDetails.setLastName(LastName);
			userDetails.setDateofbirth(Dateofbirth.toString());
			ud.register(userDetails);
	
			model.addAttribute("Email", user.getEmail());
			return "Thankyou";
		} catch (Exception e) {
			System.out.println(e);
		}
		model.addAttribute("errMsg", "Email has already taken");
		return "Register";
	}
	
	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public ModelAndView Login(HttpSession session) throws Exception {
		return new ModelAndView("Login"); 
	}
	
	@RequestMapping(value="/Login", method = RequestMethod.POST) // login process
	public ModelAndView Login(
			@ModelAttribute("Login") Users user, Model model, 
			HttpServletRequest req, HttpServletResponse res) {
	
		/* String rememberMe = req.getParameter("rememberMe"); */
		HttpSession session = req.getSession();
		Users isLogin = us.login(user);
		
		if(isLogin != null) {
			
			session.setAttribute("Email", isLogin.getEmail());
			session.setAttribute("userId", isLogin.getUserId());
			session.setAttribute("roleId", isLogin.getRoleId());
			session.setAttribute("isLogin", true);
			return new ModelAndView("redirect:/DashboardUser");
		}
		
		String msg = "Credentials is incorrect !";
		model.addAttribute("message", msg);
		return new ModelAndView("Login");
	}
	
	@RequestMapping(value="/Logout", method = RequestMethod.GET)
	public String Logout(HttpServletResponse res, HttpSession session) throws Exception {
		session.invalidate();

		Cookie eCookie = new Cookie("Email", "");
		eCookie.setMaxAge(0); // 10 minute
		res.addCookie(eCookie);
		
		Cookie iCookie = new Cookie("userId", "");
		iCookie.setMaxAge(0);
		res.addCookie(iCookie);
		
		return "Login"; 
	}

	
	
	  @RequestMapping(value="/ForgetPassword") public ModelAndView
	  forgotPassword(HttpServletResponse res) throws Exception { return new
	  ModelAndView("/ForgetPassword"); }
	  
	  @RequestMapping(value="/ForgetPassword", method = RequestMethod.POST) //forgot password logic 
	  public String
	  forgotPassword(@RequestParam("Email") String email, Model model,
	  HttpServletRequest req) throws Exception { HttpSession session =
	  req.getSession(); String checkEmail = us.checkEmail(email);
	  
	  if(checkEmail != null) { session.setAttribute("isReset", true);
	  session.setAttribute("Email", email); return "/ResetPassword"; }
	  
	  String msg = "Email not found"; model.addAttribute("message", msg); return
	  "/ForgetPassword"; }
	  
	  @RequestMapping(value="/reset") public ModelAndView reset(Model model,
	  HttpSession session) throws Exception { if((Boolean)
	  session.getAttribute("isReset")) { return new
	  ModelAndView("/ResetPassword"); }
	  
	  String msg = "Email required"; model.addAttribute("message", msg); return new
	  ModelAndView("/ForgetPassword"); }
	  
	  @RequestMapping(value="/ResetPassword", method = RequestMethod.POST) // resetpassword 
	  public String reset(@RequestParam("Password") String password, Model
	  model, HttpSession session) throws Exception { try {
	  us.updatePassword(password, (String) session.getAttribute("Email"));
	  
	  String msg = "Password has been changed"; model.addAttribute("scMessage",
	  msg); session.invalidate(); } catch (Exception e) { System.out.println(e);
	  return "/ResetPassword"; }
	  
	  return "/Login"; }
	 
	 

}
