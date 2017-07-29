package com.ss.SmartPrixB.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Brand {
	
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int brandID;
	private String brandName;
	private String brandRating;
	private String brandDesc;
	@ManyToOne
	@JoinColumn(name="categoryID",insertable=false,updatable=false)
	private Category category;
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}

	@OneToMany(mappedBy="brand",fetch=FetchType.EAGER,cascade=CascadeType.REMOVE)
	private Set<Product> p= new HashSet<Product>();
	
	public Set<Product> getP() {
		return p;
	}
	public void setP(Set<Product> p) {
		this.p = p;
	}
	public int getBrandID() {
		return brandID;
	}
	public void setBrandID(int brandID) {
		this.brandID = brandID;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandRating() {
		return brandRating;
	}
	public void setBrandRating(String brandRating) {
		this.brandRating = brandRating;
	}
	public String getBrandDesc() {
		return brandDesc;
	}
	public void setBrandDesc(String brandDesc) {
		this.brandDesc = brandDesc;
	}

}
