package com.AbcPortal.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.AbcPortal.model.UserDetails;
import com.AbcPortal.repository.UserDetailsRepository;

@Service
@Transactional
public class UserDetailsService {
	@Autowired
	UserDetailsRepository repo;
	
	public UserDetails register(UserDetails userDetails) {
		return repo.save(userDetails);
	}
	
	public String getDetailsById(String userId) {
		return repo.getDetailsById(userId);
	}
	
	public UserDetails updateProfile(Long userDetailsId, UserDetails ud) {
		UserDetails userDetails = repo.findById(userDetailsId).get();
		
		// update
		userDetails.setFirstName(ud.getFirstName());
		userDetails.setLastName(ud.getLastName());
		/* userDetails.setBio(ud.getBio()); */
		userDetails.setDateofbirth(ud.getDateofbirth());
		userDetails.setEducation(ud.getEducation());
		userDetails.setJobsExperience(ud.getJobsExperience());
		userDetails.setSkill(ud.getSkill());

		
		// save
 		return repo.save(userDetails);
	}
	
	public List<UserDetails> searchByKey(String key) {
		return repo.searchByKey(key);
	}
	
	public List<UserDetails> getAllUserDetails() {
		return repo.findAll();
	}
	
	public UserDetails getDetailsById(Long id) {
		return repo.findById(id).get();
	}

}
