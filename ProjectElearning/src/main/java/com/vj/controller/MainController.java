package com.vj.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vj.dao.OrderRepository;
import com.vj.entites.AdminPojo;
import com.vj.entites.Order;
import com.vj.entites.PlanType;
import com.vj.entites.Product;
import com.vj.entites.Registration;
import com.vj.services.AdminBL;
import com.vj.services.OrderBL;
import com.vj.services.ProductBL;
import com.vj.services.registerBL;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class MainController {

	@Autowired
	private AdminBL adminService;
	@Autowired
	private registerBL registerService;
	@Autowired
	private ProductBL productService;
	@Autowired
	private OrderBL orderService;

	List<Registration> ls;

	@RequestMapping("home")
	public String home() {
		return "index";
	}

	@RequestMapping("login")
	public String login() {

		return "login";
	}

	@RequestMapping("register")
	public String register(HttpSession session) {
		
		System.out.println(session.getAttribute("role"));
		return "register";
	}

	@RequestMapping("about")
	public String about() {
		return "about";
	}

	@RequestMapping("dashboard")
	public String dashboard(HttpSession session) {

		String email = (String) session.getAttribute("email");
		if (email == null) {
			return "index";
		}
		return "dashboard";
	}

	@RequestMapping("contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping("login1")
	public String login1(@RequestParam(value = "email") String email, @RequestParam(value = "pass") String password,
			@RequestParam(value = "select") String select, HttpSession session) {
		session.setAttribute("role",select);
		if (select.equals("user")) {
			Registration reg = new Registration();
			reg.setEmail(email);
			reg.setPassword(password);
			ls = registerService.getLogin1(reg); // ==>>

			session.setAttribute("email", email);
			if (email == null) {
				return "index";
			}

			if (ls.size() != 0)

			{

				session.setAttribute("ls", ls);
				System.out.println(ls);
				return "dashboard";
			}
		}
		if (select.equals("admin"))

		{
			AdminPojo ad = new AdminPojo();
			System.out.println("select");
			System.out.println(email);
			System.out.println(password);
			ad.setEmail(email);
			ad.setPassword(password);
			boolean b = adminService.getAdmin(ad);
			session.setAttribute("email", email);
			if (b) {
				System.out.println(email);
				System.out.println(password);
				return "redirect:/admin/admindashboard";
			} else {
				return "redirect:login";
			}
		}

		return "login";

	}

	@RequestMapping("registertask")
	public String registertask(@RequestParam(name = "fullname") String fullname,
			@RequestParam(name = "email") String email, @RequestParam(name = "gender") String gender,
			@RequestParam(name = "username") String username, @RequestParam(name = "password") String password,
			@RequestParam(name = "phonenumber") String phonenumber, @RequestParam(name = "address") String address,
			HttpSession session) {

		// Create a new registration object
		String role =(String) session.getAttribute("role");
		Product p = (Product) session.getAttribute("product");
		Registration reg = new Registration(fullname, email, gender, username, password, phonenumber, address, p);
		
		// Save the user using the service
		registerService.add(reg);
		if(role.equals("admin"))
		{
			return "redirect:/admin/userview";
		}
			
		return "login";
	}

	@RequestMapping("edit")
	public String edit() {

		return "Editform";
	}

	@RequestMapping("edittask")
	public String updateTask(@RequestParam(value = "email", required = false) String email,
			@RequestParam(value = "fullname") String fullname, @RequestParam(value = "phonenumber") String phonenumber,
			@RequestParam(value = "username") String username,
			@RequestParam(value = "gender", required = false) String gender,
			@RequestParam(value = "address") String address) {

//	    User u = new User();
		Registration r = new Registration();
		r.setEmail(email);
		r.setFullname(fullname);
		r.setUsername(username);
		r.setGender(gender);
		r.setPhonenumber(phonenumber);
		r.setAddress(address);
		registerService.update(r);
		

		System.out.println("User details updated successfully!");
		return "login";
	}

	@RequestMapping("changepassword")
	public String chpass() {

		return "changepassword";
	}

	@RequestMapping("changepasswordtask")
	public String changepasswordtask(@RequestParam(value = "oldpassword") String oldpassword,
			@RequestParam(value = "newpassword") String newpassword,
			@RequestParam(value = "cnfpassword") String cnfpassword, HttpSession session) {

		String email = (String) session.getAttribute("email");
		if (email != null) {
			Registration r = new Registration();
			r.setPassword(oldpassword);
			r.setEmail(email);
			registerService.changePassword(r, cnfpassword);
		}
		return "login";
	}
	

	@RequestMapping("profile")
	public String profile(HttpSession session) {
		String email = (String) session.getAttribute("email");
		if (email == null) {
			return "index";
		}

		return "profile";
	}

	@RequestMapping("db")
	public String dashback() {

		return "dashboard";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {

		session.setAttribute("ls1", null);
		session.setAttribute("email", null);
		session.invalidate(); // used for -> session closed
		return "login";
	}

	@RequestMapping("course")
	public String course(HttpSession session) {
		List<Product> ls = productService.select();
		session.setAttribute("ls", ls);
		return "courses";
	}

	@RequestMapping("team")
	public String team() {
		return "team";
	}

	@RequestMapping("testimonial")
	public String testimonial() {
		return "testimonial";
	}
	
	
////=============================================================================================================

	@RequestMapping("productTask")
	public String productTask() {
		Product pd = new Product(null, null, 0, null);
		productService.add();
		return "";
	}
	
	
	@RequestMapping("showplans")
	public String showPlans(@RequestParam(value ="product_id") int productId, HttpSession session) {
		
		session.setAttribute("productId", productId);
		return "ShowPlans";
	}
	

	@PostMapping("purchase")
	public String purchaseProduct(@RequestParam("plan") String planStr, HttpSession session) {
	    String email = (String) session.getAttribute("email");
	    int productId = (int) session.getAttribute("productId");

	    if (email == null || productId == 0) {
	        return "redirect:/user/login";
	    }

	    try {
	        PlanType plan = PlanType.valueOf(planStr.toUpperCase()); // ✅ Convert String to Enum
	        Order buyProduct = orderService.buyProduct(productId, email, plan);
	        if(buyProduct==null)
	        {
	        	return "SubscribePage";
	        }
	    } catch (IllegalArgumentException e) {
	        return "redirect:/user/showplans?error=InvalidPlan";
	    }

	    return "redirect:/user/CoursePurchased";
	}
	@RequestMapping("CoursePurchased")
	public String CoursePurchased() {

		return "CoursePurchased";
	}
	

	@RequestMapping("productPurchase")
	public String productPurchase(@RequestParam(value = "name") String name,
			@RequestParam(value = "duration") String duration, @RequestParam(value = "category") String category,
			@RequestParam(value = "price") int price, HttpSession session) {
		Product product = new Product(name, category, price, duration);
		session.setAttribute("product", product);
		String email = (String) session.getAttribute("email");
		if (email == null) {
			return "login";
		}
		return "redirect:/user/purchase";
	}
	
	@RequestMapping("getAllProduct")
	public String getAllProduct(HttpSession session) {
		
		List<Product> ls = productService.select();
		session.setAttribute("ls", ls);
		
		return "login";
	}
	
	
////=============================================================================================================




}
