package com.vj.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vj.entites.Order;
import com.vj.entites.Product;
import com.vj.entites.Registration;

public interface OrderRepository extends JpaRepository<Order, Integer>{

//	public Registration findByUser(Registration user);

	public Order findByUserAndProduct(Registration user1, Product product);

}
