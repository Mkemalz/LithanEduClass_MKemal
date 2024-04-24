package com.kyn.repository;

 import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

import com.kyn.entity.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Long>{
	
	
	public Optional<Users> findByUsername(String username);
	

}
