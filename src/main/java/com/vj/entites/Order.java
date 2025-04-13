package com.vj.entites;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private Registration user;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private PlanType plan;  // New enum field

    private LocalDateTime orderDate;

    // Constructors, getters, and setters
    public Order() {
        this.orderDate = LocalDateTime.now();
    }

    public Order(Registration user, Product product,PlanType plan) {
        this.user = user;
        this.product = product;
        this.plan = plan;
        this.orderDate = LocalDateTime.now();
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Registration getUser() {
        return user;
    }

    public void setUser(Registration user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public PlanType getPlan() {
        return plan;
    }

    public void setPlan(PlanType plan) {
        this.plan = plan;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

	@Override
	public String toString() {
		return "Order [id=" + id + ", user=" + user + ", product=" + product + ", plan=" + plan + ", orderDate="
				+ orderDate + "]";
	}
    
    
}
