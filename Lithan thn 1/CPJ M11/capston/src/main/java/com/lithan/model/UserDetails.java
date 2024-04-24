package com.lithan.model;

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
	@Column(name = "user_detail_id")
	private Long userDetailsId;
	
	@Column(name = "user_id")
	private String userId;
	
	@OneToOne(optional=false)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id", insertable=false, updatable=false)
	private Users user;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "city")
	private String city;
	
	@Column(name = "date_of_birth")
	private String dateOfBirth;
	
	
	public UserDetails() {}


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
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}



	
	
}
