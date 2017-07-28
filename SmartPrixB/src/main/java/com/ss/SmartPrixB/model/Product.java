package com.ss.SmartPrixB.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Product {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private String ProductID;
	private String ProductName;
	private String ProductDesc;
	private String ProductCost;
	public String getProductID() {
		return ProductID;
	}
	public void setProductID(String productID) {
		ProductID = productID;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getProductDesc() {
		return ProductDesc;
	}
	public void setProductDesc(String productDesc) {
		ProductDesc = productDesc;
	}
	public String getProductCost() {
		return ProductCost;
	}
	public void setProductCost(String productCost) {
		ProductCost = productCost;
	}
}
