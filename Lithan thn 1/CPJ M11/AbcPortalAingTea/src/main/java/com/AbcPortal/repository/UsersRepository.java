package com.AbcPortal.repository;

import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.AbcPortal.model.*;

@Repository
public interface UsersRepository extends JpaRepository<Users, Long> {
	@Query(value = "SELECT * FROM users ORDER BY user_id DESC LIMIT 1", nativeQuery = true) 
	String getLastUser();
	
	@Query(value = "SELECT * FROM users WHERE :Email = Email AND :Password = Password", nativeQuery = true)
	Users login(@Param("Email") String Email, @Param("Password") String Password);

	@Query(value = "SELECT * FROM users WHERE Email = :Email", nativeQuery = true)
	String checkEmail(@Param("Email") String Email);
}
