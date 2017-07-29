package com.ss.SmartPrixB.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;
import com.ss.SmartPrixB.model.Brand;

@Component
@Entity
public class Product {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int productID;
	private String productName;
	private String productDesc;
	private String productCost;
	
	@ManyToOne
	@JoinColumn(name="brandID",insertable=false,updatable=false)
	private Brand brand;

	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductCost() {
		return productCost;
	}
	public void setProductCost(String productCost) {
		this.productCost = productCost;
	}
	

}
