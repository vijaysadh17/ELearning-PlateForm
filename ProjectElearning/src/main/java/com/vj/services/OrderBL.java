package com.vj.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vj.dao.OrderRepository;
import com.vj.dao.ProductRepository;
import com.vj.dao.RegisterRepository;
import com.vj.entites.Order;
import com.vj.entites.PlanType;
import com.vj.entites.Product;
import com.vj.entites.Registration;

@Component
public class OrderBL {

	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private RegisterRepository registerRepository;
	@Autowired
	private ProductRepository productRepository;

	public Order buyProduct(int productId, String email, PlanType plan) { 
	    List<Registration> user = registerRepository.findByEmail(email);
	    Optional<Product> op = productRepository.findById(productId);
	    Order save = new Order();
	    
	    if (user != null && op.isPresent()) {
	        Product product = op.get();

	        for (Registration user1 : user) {
	            Order order = new Order(user1, product, plan); // ✅ Pass PlanType correctly
	            
	            Order reg = orderRepository.findByUserAndProduct(user1,product);
	            if(reg==null)
	            {
	            	save = orderRepository.save(order);
            	
	            }else {
	            	return null;
	            }
	            
	        }
	    } else {
	        return null;
	    }
	    
	    return save;
	}

}
