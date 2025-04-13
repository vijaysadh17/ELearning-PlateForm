package com.vj.entites;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "User")
public class Registration {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String fullname;
	private String email;
	private String gender;
	private String username;
	private String password;
	private String phonenumber;
	private String address;
	@Column(nullable = false, columnDefinition = "TINYINT(1) DEFAULT 1")
	private Boolean status = true;
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "course_id")
	private Product product;

	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Registration(String fullname, String email, String gender, String username, String password,
			String phonenumber, String address, Product product) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.gender = gender;
		this.username = username;
		this.password = password;
		this.phonenumber = phonenumber;
		this.address = address;
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Registration [id=" + id + ", fullname=" + fullname + ", email=" + email + ", gender=" + gender
				+ ", username=" + username + ", password=" + password + ", phonenumber=" + phonenumber + ", address="
				+ address + ", status=" + status + ", product=" + product + "]";
	}

	

}
