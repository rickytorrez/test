package com.ericardo.dcHome.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Picture {
	/*************************************** ATTRIBUTES **************************************/
	@Id
	@GeneratedValue
	private Long id;
	 	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date createdAt;
	 	
	@DateTimeFormat(pattern="MM:dd:yyyy HH:mm:ss")
	private Date updatedAt;

	/************************************* RELATIONSHIPS *************************************/
	 	
	/*************************************** with user ***************************************/
	 	
	/********************************* PERSIST AND UPDATE  **********************************/
	 	
	@PrePersist
	public void onCreate() {
	 	this.createdAt = new Date();
	}
	 	
	@PreUpdate
	public void onUpdate() {
	 	this.updatedAt = new Date();
	}
	/******************************** SETTERS AND GETTERS  **********************************/


	/********************************** EMPTY CONSTRUCTOR  **********************************/
	 	
	public Picture() {
	 	this.createdAt = new Date();
	 	this.updatedAt = new Date();
	}
}