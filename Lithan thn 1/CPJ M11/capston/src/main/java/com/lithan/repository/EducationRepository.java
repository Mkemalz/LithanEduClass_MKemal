package com.lithan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.model.Education;

@Repository
public interface EducationRepository extends JpaRepository<Education, Long> {

    List<Education> findByUserDetailsId(String userDetailsId);
} 
