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

public class BillingDetails {
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	
	private int billingID;

	@OneToOne
	@JoinColumn
	private User usr;

	
	public User getUsr() {
		return usr;
	}
	public void setUsr(User usr) {
		this.usr = usr;
	}
	public int getBillingID() {
		return billingID;
	}
	public void setBillingID(int billingID) {
		this.billingID = billingID;
	}
	public String getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(String billingAddress) {
		this.billingAddress = billingAddress;
	}
	public String getBillingStreet() {
		return billingStreet;
	}
	public void setBillingStreet(String billingStreet) {
		this.billingStreet = billingStreet;
	}
	public int getBillingPinCode() {
		return billingPinCode;
	}
	public void setBillingPinCode(int billingPinCode) {
		this.billingPinCode = billingPinCode;
	}
	private String billingAddress;
	private String billingStreet;
	private int billingPinCode;

}
