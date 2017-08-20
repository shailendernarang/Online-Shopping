package com.ss.SmartPrixB.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class ShippingDetails {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	private int shippingID;


	private String shippingAddress;
	private String shippingStreet;
	private String shippingPinCode;

	@OneToOne
	@JoinColumn
	private User user;

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getShippingID() {
		return shippingID;
	}
	public void setShippingID(int shippingID) {
		this.shippingID = shippingID;
	}
	public String getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public String getShippingStreet() {
		return shippingStreet;
	}
	public void setShippingStreet(String shippingStreet) {
		this.shippingStreet = shippingStreet;
	}
	public String getShippingPinCode() {
		return shippingPinCode;
	}
	public void setShippingPinCode(String shippingPinCode) {
		this.shippingPinCode = shippingPinCode;
	}
}
