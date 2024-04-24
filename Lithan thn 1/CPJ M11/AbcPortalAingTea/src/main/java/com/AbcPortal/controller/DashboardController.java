package com.AbcPortal.controller;

import java.util.List;

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
import com.AbcPortal.service.UserDetailsService;

@Controller
public class DashboardController {

	
	  @Autowired UserDetailsService ud;
	  
	  @RequestMapping(value="/dashboard") // profile overview
		public ModelAndView dashboard(HttpSession session, Model model) throws Exception {
			try {
				this.setModel(model, session);
				return new ModelAndView("dashboard/index");  
			} catch (Exception e) {
				System.out.println(e);
				String msg = "Login required";
				model.addAttribute("message", msg);
				return new ModelAndView("login/login");
			}
		}
		
		@RequestMapping(value = "/profile")
		public ModelAndView profile(HttpSession session, Model model) {
			try {
				this.setModel(model, session);
				return new ModelAndView("Profile");  
			} catch (Exception e) {
				System.out.println(e);
				String msg = "Login required";
				model.addAttribute("message", msg);
				return new ModelAndView("Login");
			}
		}
		@RequestMapping(value="/editprofile") // update profile GET
		public ModelAndView updateProfile(Model model, HttpSession session) throws Exception {
			try {
				this.setModel(model, session);
				return new ModelAndView("editprofile");  
			} catch (Exception e) {
				System.out.println(e);
				String msg = "Login required";
				model.addAttribute("message", msg);
				return new ModelAndView("login");
			}
		}

		@RequestMapping(value="/Edit", method = RequestMethod.POST) // update profile POST
		public String updateProfile(
		        @ModelAttribute("profile") UserDetails userDetails,
		       
		        Model model, HttpSession session) {
		    
		    Long userDetailsId = Long.parseLong(String.valueOf(session.getAttribute("userId")));
			/*
			 * userDetails.setFirstName(FirstName); userDetails.setLastName(LastName);
			 * userDetails.setDateofbirth(Dateofbirth);
			 * userDetails.setJobsExperience(Experience);
			 * userDetails.setEducation(Education); userDetails.setSkill(Skill);
			 */
		    
		    ud.updateProfile(userDetailsId, userDetails);
		    
		    this.setModel(model, session);
		    
		    String msg = "Profile has been updated";
		    model.addAttribute("message", msg);
		    return "Profile";
		}
	
	private void setModel(Model model, HttpSession session) {
		String userId = String.valueOf(session.getAttribute("userId"));
		String[] userDetails = ud.getDetailsById(userId).replaceAll("null", "-").split(",");
		String udID = userDetails[0];
		
		model.addAttribute("F", userDetails[1].charAt(0));
		model.addAttribute("L", userDetails[2].charAt(0));
		
		model.addAttribute("FirstName", userDetails[1]);
		model.addAttribute("LastName", userDetails[2]);
		
		
		/* model.addAttribute("fullName", userDetails[1] + " " + userDetails[2]); */
		model.addAttribute("Dateofbirth", userDetails[3]);
		
		 model.addAttribute("JobsExperience", userDetails[5]); 
		 model.addAttribute("Education", userDetails[4]); 
		 model.addAttribute("Skill", userDetails[6]); 
		model.addAttribute("Email", session.getAttribute("Email"));
		
	}
		
	/*
	 * @RequestMapping(value = "/profile") public ModelAndView Profile(HttpSession
	 * session, Model model) { try { this.setModel(model, session); return new
	 * ModelAndView("profile"); } catch (Exception e) { System.out.println(e);
	 * String msg = "Login required"; model.addAttribute("message", msg); return new
	 * ModelAndView("login"); }
	 * 
	 * }
	 */
		
		
		/*
		 * // experiences model.addAttribute("ex",
		 * exs.getExperiencesByUserDetailsId(udID)); // Experiences[]
		 * 
		 * // educations model.addAttribute("ed",
		 * eds.getEducationsByUserDetailsId(udID)); // Educations[]
		 * 
		 * // notifications List<BulkEmail> be = bes.getEmail();
		 * model.addAttribute("nf1", be.get(be.size() - 1)); model.addAttribute("nf2",
		 * be.get(be.size() - 2)); model.addAttribute("nf3", be.get(be.size() - 3));
		 */
	}

