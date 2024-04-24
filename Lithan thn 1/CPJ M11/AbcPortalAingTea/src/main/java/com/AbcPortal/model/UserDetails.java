package com.AbcPortal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_details")
public class UserDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_details_id")
	private Long userDetailsId;
	
	@Column(name = "user_id")
	private String userId;
	
	@OneToOne(optional=false)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id", insertable=false, updatable=false)
	private Users user;
	

	@Column(name = "FirstName")
	private String FirstName;
	
	@Column(name = "LastName")
	private String LastName;
	
	@Column(name = "Dateofbirth")
	private String Dateofbirth;
	
	@Column(name = "Education")
	private String Education;
	
	@Column(name = "JobsExperience")
	private String JobsExperience;
	
	@Column(name = "Skill")
	private String Skill;
	
	public UserDetails() {}

	public UserDetails(Long userDetailsId, String userId, Users user, String firstName, String lastName,
			String dateofbirth,String education, String jobsExperience, String skill) {
		super();
		this.userDetailsId = userDetailsId;
		this.userId = userId;
		this.user = user;
		FirstName = firstName;
		LastName = lastName;
		Dateofbirth = dateofbirth;

		Education = education;
		JobsExperience = jobsExperience;
		Skill = skill;
	}

	public Long getUserDetailsId() {
		return userDetailsId;
	}

	public void setUserDetailsId(Long userDetailsId) {
		this.userDetailsId = userDetailsId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getDateofbirth() {
		return Dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		Dateofbirth = dateofbirth;
	}

	public String getEducation() {
		return Education;
	}

	public void setEducation(String education) {
		Education = education;
	}

	public String getJobsExperience() {
		return JobsExperience;
	}

	public void setJobsExperience(String jobsExperience) {
		JobsExperience = jobsExperience;
	}

	public String getSkill() {
		return Skill;
	}

	public void setSkill(String skill) {
		Skill = skill;
	}
	
	
	
	
	
	
	
	
	
}
