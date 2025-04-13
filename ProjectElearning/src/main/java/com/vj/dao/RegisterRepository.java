package com.vj.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.vj.entites.Registration;

public interface RegisterRepository extends CrudRepository<Registration, Integer> {
//    public List<Registration> findByEmailAndPassword(String email, String password);
	public List<Registration> findByEmail(String email);
	public List<Registration> findByFullname(String fullname);
	public List<Registration> findByEmailAndPassword(String email,String password);
}
