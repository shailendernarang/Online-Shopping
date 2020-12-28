package com.ss.SmartPrixB.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;

import org.springframework.stereotype.Component;

@Component
@Entity

public class BillingDetails implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "id_Sequence")
	@SequenceGenerator(name = "id_Sequence", sequenceName = "ID_SEQ")
	
	private int billingID;

	@OneToOne
	@JoinColumn
	private UserTable usr;

	
	public UserTable getUsr() {
		return usr;
	}
	public void setUsr(UserTable usr) {
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
	public String getBillingPinCode() {
		return billingPinCode;
	}
	public void setBillingPinCode(String billingPinCode) {
		this.billingPinCode = billingPinCode;
	}
	private String billingAddress;
	private String billingStreet;
	private String billingPinCode;

}
