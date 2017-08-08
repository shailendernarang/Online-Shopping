package com.ss.SmartPrixB.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="Category")
public class Category {
	
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int categoryID;
	private String categoryName;
	private String categoryDesc;

	@OneToMany(mappedBy="category",fetch=FetchType.EAGER,cascade=CascadeType.REMOVE)
	private Set<Brand> p= new HashSet<Brand>();
	
	public Set<Brand> getP() {
		return p;
	}
	public void setP(Set<Brand> p) {
		this.p = p;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDesc() {
		return categoryDesc;
	}
	public void setCategoryDesc(String categoryDesc) {
		this.categoryDesc = categoryDesc;
	}
	
	
	

}
