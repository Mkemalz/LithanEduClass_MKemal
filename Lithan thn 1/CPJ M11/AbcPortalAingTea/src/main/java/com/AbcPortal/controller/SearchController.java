package com.AbcPortal.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.AbcPortal.model.UserDetails;
import com.AbcPortal.service.UserDetailsService;

@Controller
public class SearchController {

	@Autowired
	UserDetailsService ud;
	
	/*
	 * @Autowired EducationsService eds;
	 * 
	 * @Autowired ExperiencesService exs;
	 */
	
	@RequestMapping(value="/Search")
	public ModelAndView search(HttpServletRequest req, Model model) throws Exception {
		String q = req.getParameter("q");
		
		
		if(q != null && !q.equals("")) {
			q = q.split(" ")[0];
			List<UserDetails> selectedUser = ud.searchByKey(q);
			model.addAttribute("selected", selectedUser);
			
			if(selectedUser.size() == 0) {
				model.addAttribute("notFound", true);
			}
		}
		
		
		
		return new ModelAndView("Search");  
	}
	
	
	  @RequestMapping(value="/Result", method = RequestMethod.POST) // view someone profile 
	  public ModelAndView Result(@RequestParam("uId") String uId, Model
	  model, HttpSession session) throws Exception { this.setModel(model, session,
	  uId); return new ModelAndView("Result"); }
	 
	
	private void setModel(Model model, HttpSession session, String uId) {
		String userId = String.valueOf(uId);
		String[] userDetails = ud.getDetailsById(userId).replaceAll("null", "-").split(",");
		String udID = userDetails[0];
		
		model.addAttribute("F", userDetails[1].charAt(0));
		model.addAttribute("L", userDetails[2].charAt(0));
		
		model.addAttribute("FirstName", userDetails[1]);
		model.addAttribute("LastName", userDetails[2]);
		
		model.addAttribute("fullName", userDetails[1] + " " + userDetails[2]);
		model.addAttribute("Dateofbirth", userDetails[3]);
		model.addAttribute("Experience", userDetails[4]);
		model.addAttribute("Education", userDetails[5]);
		model.addAttribute("Email", userDetails[1] + "@gmail.com");
		model.addAttribute("Skill", userDetails[6]);
		
		/*
		 * // experiences model.addAttribute("ex",
		 * exs.getExperiencesByUserDetailsId(udID)); // Experiences[]
		 * 
		 * // educations model.addAttribute("ed",
		 * eds.getEducationsByUserDetailsId(udID)); // Educations[]
		 */	
	}	
}
