package com.vj.services;

import java.util.List;
import java.util.Optional;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.vj.dao.ProductRepository;
import com.vj.entites.Product;

@Component
//@Service
public class ProductBL {

	@Autowired
	private ProductRepository productRepository;
	
	Scanner sc = new Scanner(System.in);
	
	
	
	
//	public ProductBL(ProductRepository productRepository) {
//		super();
//		this.productRepository = productRepository;
//	}

	public void add() {
		
//		productRepository.save();

	}

	public List<Product> select() {
		List<Product> pr= (List<Product>) productRepository.findAll();
		if(pr.isEmpty())
		{
			System.out.println("No such Product found....");
		}
		else
		{
			pr.forEach(product->{System.out.println(product);});
		}
		System.out.println("Product Data Showed Successfully.....");
		
		return pr;
	}

		public void update()
		{
			System.out.println("Enter the Product ID you want to Update : ");
			int id=sc.nextInt();
			Optional<Product> optional = productRepository.findById(id);
			if (optional.isEmpty()) {
				System.out.println("No such id is found ");

			} else {
				Product p = optional.get();
				System.out.println("Enter your Name :");
				String name=sc.next();
				System.out.println("Enter your category :");
				String category=sc.next();
				System.out.println("Enter your Price :");
				Double price=sc.nextDouble();
				p.setName(name);
				p.setCategory(category);
				p.setPrice(price);
				productRepository.save(p);
			}
			System.out.println("Product Data Updated Successfully");

		}
		public void delete()
		{
			System.out.println("Enter the Product ID you want to Delete : ");
			int id=sc.nextInt();
			productRepository.deleteById(id);
			System.out.println("Product Data Deleted Successfully");
		}
	
	
}
