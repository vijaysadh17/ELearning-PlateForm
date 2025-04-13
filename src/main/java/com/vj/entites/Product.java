package com.vj.entites;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Course")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int course_id;
	private String name;
	private String category;
	private String duration;
	private double price;

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(String name, String category, double price, String duration) {
		super();
		this.name = name;
		this.category = category;
		this.price = price;
		this.duration = duration;
	}

	public int getCourse_id() {
		return course_id;
	}

	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Product [course_id=" + course_id + ", name=" + name + ", category=" + category + ", price=" + price
				+ ", duration=" + duration + "]";
	}

}
