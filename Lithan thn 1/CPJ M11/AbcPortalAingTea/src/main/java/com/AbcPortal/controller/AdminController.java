package com.AbcPortal.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.AbcPortal.model.BulkEmail;

/*import com.AbcPortal.model.BulkEmail;
import com.AbcPortal.model.City;
import com.AbcPortal.model.Educations;
import com.AbcPortal.model.Experiences;
import com.AbcPortal.repository.CityRepository;
import com.AbcPortal.repository.EducationsRepository;
import com.AbcPortal.service.BulkEmailService;
import com.AbcPortal.service.EducationsService;
import com.AbcPortal.service.ExperiencesService;*/

import com.AbcPortal.model.UserDetails;
import com.AbcPortal.service.BulkEmailService;
import com.AbcPortal.service.UserDetailsService;
import com.AbcPortal.service.UsersService;

import helper.Profile;

@Controller
public class AdminController {
	@Autowired
	UsersService us;
	
	@Autowired
	UserDetailsService ud;
	
	
	  @Autowired BulkEmailService bs;
	  
		/*
		 * @Autowired CityRepository cr;
		 * 
		 * @Autowired EducationsService eds;
		 * 
		 * @Autowired ExperiencesService exs;
		 */
	 
		/*
		 * @RequestMapping(value="/Admin") public ModelAndView Admin(HttpServletResponse
		 * res) throws Exception { return new ModelAndView("Admin"); }
		 */
	  
	@RequestMapping(value="/admin") 
	public ModelAndView Admin(Model model, HttpSession session) {
		String name = ud.getDetailsById(session.getAttribute("userId").toString()).split(",")[1];
		model.addAttribute("adminName", name);
		List<UserDetails> users = ud.getAllUserDetails();
		String cd = null; 
		  System.out.println("OK " + cd);
		  model.addAttribute("users", users);
		return new ModelAndView("Admin");
	}
	
	
	  @RequestMapping(value="/Send_bulk") public ModelAndView
	  Send_Bulk(@ModelAttribute("sendBulk") BulkEmail bulkEmail, HttpSession
	  session) { return new ModelAndView("Send_bulk"); }
	  
	  @RequestMapping(value="/Send_bulk", method = RequestMethod.POST) 
	  public String sb(@ModelAttribute("sendBulk") BulkEmail bulkEmail, HttpSession
	  session) { DateTimeFormatter dtf =
	  DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss"); LocalDateTime now =
	  LocalDateTime.now();
	  
	  bulkEmail.setSendBy("1"); bulkEmail.setCreatedAt(dtf.format(now));
	  bs.sendEmail(bulkEmail.getEmailSubject(), bulkEmail.getEmailBody(), null);
	  
	  bs.saveToDB(bulkEmail); return "redirect:/admin"; }
	 
	
	
	/*
	 * @RequestMapping(value="/admin/all-users") public ModelAndView allUsers(Model
	 * model, HttpSession session) { List<UserDetails> users =
	 * ud.getAllUserDetails(); String cd = null; System.out.println("OK " + cd);
	 * model.addAttribute("users", users); return new
	 * ModelAndView("administrator/all-users"); }
	 */
	 
	
	
	  @RequestMapping(value="/delete/{id}") 
	  public String deleteUserById(@PathVariable("id") Long id, Model model) { boolean isDeleted
	  = us.deleteUserById(id);
	  if(!isDeleted) { model.addAttribute("err",
	  "Cannot delete this user");
	  }
	  
	  return "redirect:/admin"; 
	  }
	  
		
		  @RequestMapping(value = "/Profile/{id}") public ModelAndView
		  profile(@PathVariable("id") Long id, Model model, HttpSession session, Profile
		  profile) { UserDetails userDetails = ud.getDetailsById(id); 
		
		profile.setId(userDetails.getUserDetailsId());
		profile.setFirstName(userDetails.getFirstName());
		profile.setLastName(userDetails.getLastName());
		profile.setFullName(userDetails.getFirstName() + " " + userDetails.getLastName());
		profile.setDateofbirth(userDetails.getDateofbirth());
		profile.setExperience(userDetails.getJobsExperience());
		profile.setEducation(userDetails.getEducation());
		profile.setSkill(userDetails.getSkill());
		/*
		 * profile.setEx(experiences); profile.setEd(educations);
		 */
		
		this.setModel(profile, model, session);
		return new ModelAndView("Profile");
	}
	
	@RequestMapping(value="Profile/Edit", method = RequestMethod.POST) // update profile POST
	public String up(@ModelAttribute("Profile") UserDetails userDetails, Model model, HttpSession session) {
		Long userDetailsId = userDetails.getUserDetailsId();
		ud.updateProfile(userDetailsId, userDetails);
		return "redirect:/profile";
	}
	
	private void setModel(Profile profile, Model model, HttpSession session) {
		model.addAttribute("id", profile.getId());
		model.addAttribute("F", profile.getFirstName().charAt(0));
		model.addAttribute("L", profile.getLastName().charAt(0));
		
		model.addAttribute("FirstName", profile.getFirstName());
		model.addAttribute("LastName", profile.getLastName());
		
		model.addAttribute("fullName", profile.getFullName());
		model.addAttribute("Dateofbirth", profile.getDateofbirth());
		model.addAttribute("Experience", profile.getExperience());
		model.addAttribute("Education", profile.getEducation());
		model.addAttribute("Skill", profile.getSkill());
		
	}
 }


