package com.vj.services;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.vj.dao.AdminRepository;
import com.vj.dao.ProductRepository;
import com.vj.dao.RegisterRepository;
import com.vj.entites.AdminPojo;
import com.vj.entites.Product;
import com.vj.entites.Registration;

@Component
//@Service
public class AdminBL {

	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private RegisterRepository registerRepository;

//	public AdminBL(AdminRepository adminRepository, RegisterRepository registerRepository,
//			ProductRepository productRepository) {
//		super();
//		this.adminRepository = adminRepository;
//		this.productRepository = productRepository;
//		this.registerRepository = registerRepository;
//	}

	public AdminBL() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product addProduct(Product pd) {
		Product p = productRepository.save(pd);
		return p;

	}

//	public Product updateProduct(Product pp,int id) {
//		Optional<Product> op = productRepository.findById(id);
//		if (op.isPresent()) {
//			Product p = op.get();
//			
//			Product save = productRepository.save(p);
//			return save;
//		}
//		return pp;
//		
//	}
	
	public Product updateProduct(Product pp, int id) {
	    Optional<Product> op = productRepository.findById(id);
	    
	    if (op.isPresent()) {
	        Product existingProduct = op.get();
	        
	        // Set new values
	        existingProduct.setName(pp.getName());
	        existingProduct.setCategory(pp.getCategory());
	        existingProduct.setDuration(pp.getDuration());
	        existingProduct.setPrice(pp.getPrice());

	        return productRepository.save(existingProduct); // Save updated product
	    }
	    
	    return pp; // Return unchanged object if not found
	}


	public void deleteProductById(int id) {
		
		productRepository.deleteById(id);
		
	}

	public List<Registration> getUser() {

		List<Registration> ls = (List<Registration>) registerRepository.findAll();

		return ls;
	}

	public List<Product> getProduct() {
		List<Product> ls = (List<Product>) productRepository.findAll();
		return ls;
	}

	public boolean getAdmin(AdminPojo ad) {

		boolean b = true;
		List<AdminPojo> list = adminRepository.findByEmailAndPassword(ad.getEmail(), ad.getPassword());
		if (list.size() == 0) {
			b = false;
		}

		return b;
	}

	

	

}
