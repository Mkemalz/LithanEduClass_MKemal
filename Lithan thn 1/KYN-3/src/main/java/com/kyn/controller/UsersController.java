package com.kyn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kyn.entity.Users;
import com.kyn.service.UsersService;

@RestController
@RequestMapping("/user")
public class UsersController {

	@Autowired
	UsersService userService;
	
	@Autowired
	private AuthenticationManager authenticate;
	
	@Autowired
	public UsersController(AuthenticationManager authenticate) {
		this.authenticate = authenticate;
	}
	
	@PostMapping("/register")
	public Users addUser(@RequestBody Users user) {
		return userService.addUser(user);
	}
	
	@PostMapping("/login")
	public String login(@RequestBody Users user) {
			try {
				System.out.println(user.getUsername()+user.getPassword());
				Authentication authentication = authenticate.authenticate(
				new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword())		
				);
				SecurityContextHolder.getContext().setAuthentication(authentication);
				return "Login Success";
			} catch (Exception e) {
				return "Invalid username or password";
			}
		
		}
	
	@GetMapping("/logout")
	public String logout() {
	    SecurityContextHolder.clearContext();
	    return "Logout Success";
	}

	@GetMapping("/test")
	public String addUser() {
		return "Memberi method kepada table";
	}
	
	@GetMapping("/private")
	public String privateEnd() {
		return "Memberi method kepada menthod";
	}
}
