package com.vj.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.vj.entites.Product;

public interface ProductRepository extends CrudRepository<Product, Integer> {
public List<Product> findByName(String name);
public List<Product> findByCategory(String category);
public List<Product> findByPrice(double price);
public List<Product> findByNameAndCategory(String name,String category);
public List<Product> findByNameAndPrice(String name,double price);
public List<Product> findByCategoryAndPrice(String category,double price);
public List<Product> findByNameAndCategoryAndPrice(String name,String category,double price);

}
