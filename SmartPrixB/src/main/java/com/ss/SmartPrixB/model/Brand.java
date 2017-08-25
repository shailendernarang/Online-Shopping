package com.ss.SmartPrixB.model;


import java.io.Serializable;
import java.util.Collection;
import java.util.TreeSet;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
public class Brand implements Serializable {
	
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int brandID;
	private String brandName;
	private String brandRating;
	private String brandDesc;
	private String categoryID;
	@Transient
	MultipartFile image;
	

	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
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
	private Collection<Product> p= new TreeSet<Product>();
	
	public Collection<Product> getP() {
		return p;
	}
	public void setP(Collection<Product> p) {
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
