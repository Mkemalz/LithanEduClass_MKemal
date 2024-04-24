
  package com.lithan.controller;
  
  import java.time.LocalDateTime; import java.time.format.DateTimeFormatter;
  import java.util.Iterator; import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
  
  import org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Controller; import
  org.springframework.ui.Model; import
  org.springframework.web.bind.annotation.ModelAttribute; import
  org.springframework.web.bind.annotation.PathVariable; import
  org.springframework.web.bind.annotation.RequestMapping; import
  org.springframework.web.bind.annotation.RequestMethod; import
  org.springframework.web.bind.annotation.RequestParam; import
  org.springframework.web.servlet.ModelAndView;

import com.lithan.model.BulkEmail;
/* import com.lithan.model.BulkEmail;
	 import com.lithan.model.city; 
	 import com.lithan.model.Educations; 
	 import com.lithan.model.Experiences; */
	 import com.lithan.model.UserDetails;
import com.lithan.service.BulkEmailService;
/* import com.lithan.repository.CityRepository;
		 import com.lithan.repository.EducationsRepository; 
		 import com.lithan.service.BulkEmailService; 
		 import com.lithan.service.EducationsService; 
		 import com.lithan.service.ExperiencesService;*/
	 import com.lithan.service.UserDetailsService; 
	 import com.lithan.service.UsersService;
	 
	 import profile.Profile;
  
  @Controller public class AdminController {
  
		
		  @Autowired UsersService us;
		  
		  @Autowired UserDetailsService ud;
		  
			
			  @Autowired BulkEmailService bs;
			  
			  @RequestMapping(value="/dashboard")
				public ModelAndView dashboard(HttpServletResponse res) throws Exception {
					return new ModelAndView("dashboard"); 
				}
			 
  
				@RequestMapping(value = "/admin1")
				public ModelAndView admin1(Model model, HttpSession session) {
					String name = ud.getDetailsById(session.getAttribute("userId").toString()).split(",")[1];
					model.addAttribute("adminName", name);
					List<UserDetails> users = ud.getAllUserDetails();
					String cd = null;
					
					System.out.println("OK " + cd);
					model.addAttribute("users", users);

					
					
					return new

					ModelAndView("admin1");
				}
  
  
  
  
  @RequestMapping(value="/showUser") public ModelAndView allUsers(Model
  model, HttpSession session) { List<UserDetails> users =ud.getAllUserDetails();
  String cd = null;
  
  System.out.println("OK " + cd);
  model.addAttribute("users", users);
  return new ModelAndView("showUser");
  }
  
  @RequestMapping(value="/send-bulk")
	public ModelAndView sendBulk(@ModelAttribute("sendBulk") BulkEmail bulkEmail, HttpSession session) {
		return new ModelAndView("send-bulk");
	}
	
	@RequestMapping(value="/send-bulk", method = RequestMethod.POST)
	public String sb(@ModelAttribute("sendBulk") BulkEmail bulkEmail, HttpSession session) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();
		
		bulkEmail.setSendBy("1");
		bulkEmail.setCreatedAt(dtf.format(now));
		bs.sendEmail(bulkEmail.getEmailSubject(), bulkEmail.getEmailBody(), null);
		
		bs.saveToDB(bulkEmail);
		return "redirect:/admin1";
	}
	
	@RequestMapping(value="/edit/{id}", method = RequestMethod.POST) // update profile POST
	public String up(@ModelAttribute("") UserDetails userDetails, Model model, HttpSession session) {
		Long userDetailsId = userDetails.getUserDetailsId();
		ud.editprofile(userDetailsId, userDetails);
		return "redirect:/show-users";
	}
	
	@RequestMapping(value="/delete/{id}") 
	public String deleteUserById(@PathVariable("id") Long id, Model model) {
		boolean isDeleted = us.deleteUserById(id);
		if(!isDeleted) {
			model.addAttribute("err", "Cannot delete this user");
		}
		
		return "redirect:/showUser";
	}
	
	@RequestMapping(value="update-profile", method = RequestMethod.POST) // update profile POST
	public String down(@ModelAttribute("profile") UserDetails userDetails, Model model, HttpSession session) {
		Long userDetailsId = userDetails.getUserDetailsId();
		ud.editprofile(userDetailsId, userDetails);
		return "redirect:../showUser";
	}
	
	@RequestMapping(value = "{id}")
	public ModelAndView profile(@PathVariable("id") Long id, Model model, HttpSession session, Profile profile) {
		UserDetails userDetails = ud.getDetailsById(id);
		
		profile.setId(userDetails.getUserDetailsId());
		profile.setFirstName(userDetails.getFirstName());
		profile.setLastName(userDetails.getLastName());
		profile.setFullName(userDetails.getFirstName() + " " + userDetails.getLastName());
		profile.setCity(userDetails.getCity());
		profile.setEmail(userDetails.getUser().getEmail());
		
		
		this.setModel(profile, model, session);
		return new ModelAndView("showUser");
	}
	
	private void setModel(Profile profile, Model model, HttpSession session) {
		  model.addAttribute("id", profile.getId()); model.addAttribute("f",
		  profile.getFirstName().charAt(0)); model.addAttribute("l",
		  profile.getLastName().charAt(0));
		  
		  model.addAttribute("firstName", profile.getFirstName());
		  model.addAttribute("lastName", profile.getLastName());
		  model.addAttribute("fullName", profile.getFullName());
		  model.addAttribute("email", profile.getEmail());
	  		model.addAttribute("city", profile.getCity ());
		  
		 
	   model.addAttribute("ex", profile.getEx()); //
		  
	   model.addAttribute("ed", profile.getEd());   
	  }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
	/*
	 * @RequestMapping(value = "/admin/profile/{id}") public ModelAndView
	 * profile(@PathVariable("id") Long id, Model model, HttpSession session,
	 * Profile profile) { UserDetails userDetails = ud.getDetailsById(id);
	 * List<Experiences> experiences =
	 * exs.getExperiencesByUserDetailsId(userDetails.getUserDetailsId().toString());
	 * List<Educations> educations =
	 * eds.getEducationsByUserDetailsId(userDetails.getUserDetailsId().toString());
	 * 
	 * profile.setId(userDetails.getUserDetailsId());
	 * profile.setFirstName(userDetails.getFirstName());
	 * profile.setLastName(userDetails.getLastName());
	 * profile.setFullName(userDetails.getFirstName() + " " +
	 * userDetails.getLastName()); profile.setTitle(userDetails.getTitle());
	 * profile.setAbout(userDetails.getAbout());
	 * profile.setCompany(userDetails.getCompanyName());
	 * profile.setEmail(userDetails.getUser().getEmail());
	 * profile.setWebsite(userDetails.getWebsite()); profile.setEx(experiences);
	 * profile.setEd(educations);
	 */
 
  
/*
 * // this.setModel(profile, model, session); return new //
 * ModelAndView("administrator/user-profile"); } //
 * // @RequestMapping(value="admin/profile/update-profile", method = //
 * RequestMethod.POST) // update profile POST public String //
 * up(@ModelAttribute("profile") UserDetails userDetails, Model model, //
 * HttpSession session) { Long userDetailsId = userDetails.getUserDetailsId();
 * // ud.updateProfile(userDetailsId, userDetails); return
 * "redirect:../all-users"; // }
 */

  
 