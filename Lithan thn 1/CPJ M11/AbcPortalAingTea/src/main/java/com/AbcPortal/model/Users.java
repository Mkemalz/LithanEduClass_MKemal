package com.AbcPortal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Long userId;

	@Column(name = "role_id")
	private String roleId;
	
	@Column(name = "Email")
	private String Email;
	
	@Column(name = "Password")
	private String Password;
	
	/*
	 * @Column(name = "Dateofbirth") private String Dateofbirth;
	 */
	
	public Users() {}

	public Users(Long userId, String roleId, String email, String password) {
		super();
		this.userId = userId;
		this.roleId = roleId;
		Email = email;
		Password = password;
		/* Dateofbirth = dateofbirth; */
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	/*
	 * public String getDateofbirth() { return Dateofbirth; }
	 * 
	 * public void setDateofbirth(String dateofbirth) { Dateofbirth = dateofbirth; }
	 */

	
	
	
	
	
	
	
	

}
