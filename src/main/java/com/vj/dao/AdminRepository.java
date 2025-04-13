package com.vj.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.vj.entites.AdminPojo;

public interface AdminRepository extends CrudRepository<AdminPojo, Integer> {

	
	public List<AdminPojo> findById(int id);
	public List<AdminPojo> findByEmailAndPassword(String email,String password);
}
