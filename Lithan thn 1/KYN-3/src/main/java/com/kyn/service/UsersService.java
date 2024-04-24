package com.kyn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import com.kyn.entity.Users;
import com.kyn.repository.UsersRepository;

@Service
public class UsersService implements UserDetailsService {

	@Autowired
	private UsersRepository usersRepository;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	
	public Users addUser(Users user) {
		
		String encodedPassword = encoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		return usersRepository.save(user);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		Users user = usersRepository.findByUsername(username).orElseThrow(
				() -> new UsernameNotFoundException(String.format("Username with email '%s'", username)));
		
		return new User(user.getUsername(), user.getPassword(), user.getAuthorities());
	}
}
