package com.lithan.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lithan.model.BulkEmail;

@Repository
public interface BulkEmailRepository extends JpaRepository<BulkEmail, Long> {

}
