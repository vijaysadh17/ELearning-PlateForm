package com.vj.services;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.vj.dao.RegisterRepository;
import com.vj.entites.Registration;

import jakarta.persistence.Id;
import jakarta.servlet.http.HttpSession;


@Component
//@Service
public class registerBL {

	@Autowired
	private RegisterRepository registerRepository;

	
//	public registerBL(RegisterRepository registerRepository) {
//		super();
//		this.registerRepository = registerRepository;
//	}

	public void add(Registration reg)
	{
		registerRepository.save(reg);
	}

	public boolean isEmail(String email, String password) {
		Iterable<Registration> iterable = registerRepository.findAll();
       Iterator<Registration> iterator = iterable.iterator();
       while(iterator.hasNext())
		{
              Registration r=iterator.next();
              if(email.equals(r.getEmail()) && password.equals(r.getPassword()))
              {
            	  System.out.println("User logged in successfully");
            	  return true;
            	  
              }
	
	   }
       System.out.println("Invalid email or password");

       return false;
	}


	public String getname(String email) {
		
		Iterable<Registration> iterable = registerRepository.findAll();
		Iterator<Registration> itr = iterable.iterator();
		String name;
		while(itr.hasNext()) {
			Registration r = itr.next();
			if(email.equals(r.getEmail())) {
				name = r.getFullname();
				return name;
			}
		}
		return "";
		
	}
	
	
	
	public boolean getLogin(Registration reg)
	{
		boolean b=true;
		
		List<Registration> ls=registerRepository.findByEmailAndPassword(reg.getEmail(),reg.getPassword());
		if(ls.size()==0)
		{
			b=false;
		}
		return b;
	}
	

	public List getLogin1(Registration reg)
	{
		List<Registration> ls=registerRepository.findByEmailAndPassword(reg.getEmail(),reg.getPassword());//url wale
		
		
		
		return ls;
	}
	
	public void update(Registration reg) {
	    // Retrieve the list of users by email
	    List<Registration> register = registerRepository.findByEmail(reg.getEmail());
	    
	    // Check if the list is not empty
	    if (!register.isEmpty()) {
	        // Get the first user from the list (assuming email is unique or you want to update the first match)
	        Registration r = register.get(0);
	        
	        // Update the user fields
			r.setFullname(reg.getFullname());
			r.setUsername(reg.getUsername());;
			r.setGender(reg.getGender());
			r.setPhonenumber(reg.getPhonenumber());;
			r.setAddress(reg.getAddress());

	        // Save the updated user to the repository
	        registerRepository.save(r);
	        System.out.println("User updated successfully: " + r);
	    } else {
	        System.out.println("User not found with email: " + reg.getEmail());
	    }
	}

	public  void changePassword(Registration r,String cnfpassword) {
		
	 List<Registration> ls = registerRepository.findByEmailAndPassword(r.getEmail(), r.getPassword());
		if(!ls.isEmpty())
		{
			Registration rg=ls.get(0);
			rg.setPassword(cnfpassword);
			registerRepository.save(rg);
			
		}
	}
	
	public void show()
	{
		
	}
	

}
