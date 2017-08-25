package com.ss.SmartPrixB.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Authorise implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int authorityID;
	public int getAuthorityID() {
		return authorityID;
	}
	public void setAuthorityID(int authorityID) {
		this.authorityID = authorityID;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getROLE() {
		return ROLE;
	}
	public void setROLE(String rOLE) {
		ROLE = rOLE;
	}
	private String username;
	private String ROLE;
}
