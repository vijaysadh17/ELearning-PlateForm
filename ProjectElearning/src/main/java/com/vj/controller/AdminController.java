package com.vj.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vj.entites.AdminPojo;
import com.vj.entites.Product;
import com.vj.entites.Registration;
import com.vj.services.AdminBL;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
	AdminBL admbl = new AdminBL();
	AdminPojo ad=new AdminPojo();
	
	public AdminController(AdminBL admbl) {
		this.admbl = admbl;
	}
		
	@RequestMapping("adminlogin")
	public String adminLogin()
	{
		
		return "adminlogin";
	}
	@RequestMapping("logout")
	public String adminLogout()
	{
		
		return "redirect:/user/logout";
	}
	@RequestMapping("/admindashboard")
	public String adminView(HttpSession session)
	{
			
		
		return "admindashboard";
	}
	
	@RequestMapping("/userview")
	public String userView(HttpSession session)
	{
		
//		AdminPojo ad=new AdminPojo();
		List<Registration> ls= admbl.getUser();
		if(ls.size()!=0)
		{
			session.setAttribute("ls1", ls);
			
			return "ShowUser";
		}
		return "admindashboard";
	}
	
	@RequestMapping("/productview")
	public String productView(HttpSession session)
	{
		List<Product> ls=admbl.getProduct();
		{
			session.setAttribute("ls1", ls);
			
			return "ShowProduct";
		}
	
//		return "admindashboard";
		
	}
	@RequestMapping("/addproduct")
	public String addProduct()
	{
		
		return "AddProductForm";
	}
	

	@RequestMapping("/addProductTask")
	public String addProductTask(@RequestParam(value = "name") String name,
			@RequestParam(value = "duration") String duration,
			@RequestParam(value = "category") String category,
			@RequestParam(value = "price") int price)
	{
		Product pd=new Product();
		pd.setName(name);
		pd.setCategory(category);
		pd.setPrice(price);
		pd.setDuration(duration);
		Product product = admbl.addProduct(pd);
		System.out.println("Data Inserted ");
		return "admindashboard";
	}
	
	
//	@RequestMapping("/deleteproduct")
//	public String deleteproduct()
//	{
//		
//		return "DeleteProductForm";
//	}
	
	@RequestMapping("/DeleteProductTask")
	public String deleteProduct(@RequestParam ("id") int id,HttpSession session)
	{
		System.out.println();
		
		admbl.deleteProductById(id);	
		session.setAttribute("ls1", admbl.getProduct());
		return "redirect:/admin/productview";
		
	}
	
	
	@RequestMapping("updateproduct")
	public String updateProduct(@RequestParam("id")int id,HttpSession session)
	{
		System.out.println(id);
//		prod
//		int id1 =(int)request.getParameter("id");
		session.setAttribute("id", id);
		return "UpdateProductForm";
	}
//	
//	 
//	
//	
//	
	@RequestMapping("UpdateFormTask")
	public String updateproduct(@RequestParam (value = "id") int id,
			@RequestParam (value = "name") String name,
			@RequestParam (value = "category") String category,
			@RequestParam (value = "duration") String duration,
			@RequestParam (value = "price") double price,Product pp,
			HttpSession session)
	{
		List<Product> ls = admbl.getProduct();
		session.setAttribute("ls1", ls);
//		for(Product p: ls)
//		{
//			System.out.println(ls);
//			
//		}
		if(ls==null)
		{
			return "redirect:/admin/admindashboard";
		}
		
		 List<Product> pd =(List<Product>) session.getAttribute("ls1");
		 Product p = pd.get(0);
		if(p!=null)	
		{
			p.setName(name);
			p.setCategory(category);
			p.setDuration(duration);
			p.setPrice(price);
			admbl.updateProduct(pp,id);
			
		}
		return "redirect:/admin/productview";
	}
//	

//	@RequestMapping("UpdateFormTask")
//	public String updateproduct(
//	    @RequestParam("id") int id,
//	    @RequestParam("name") String name,
//	    @RequestParam("category") String category,
//	    @RequestParam("duration") String duration,
//	    @RequestParam("price") double price,
//	    HttpSession session) {
//	    
//	    // Fetch the product list from session
//	    List<Product> ls = (List<Product>) session.getAttribute("ls1");
//
//	    if (ls == null) {
//	        return "redirect:/admin/productview"; // Redirect if session data is missing
//	    }
//
//	    // Find the product by ID
//	    Product selectedProduct = null;
//	    for (Product p : ls) {
//	        if (p.getCourse_id() == id) {
//	            selectedProduct = p;
//	            break;
//	        }
//	    }
//
//	    if (selectedProduct != null) {
//	        // Update product details
//	        selectedProduct.setName(name);
//	        selectedProduct.setCategory(category);
//	        selectedProduct.setDuration(duration);
//	        selectedProduct.setPrice(price);
//
//	        // Save updated product in database
//	        admbl.updateProduct(selectedProduct, id);
//	    }
//
//	    // Remove session attribute after update
//	    session.removeAttribute("ls1");
//
//	    return "redirect:/admin/productview"; // Redirect to product list
//	}

	
	
	
}
