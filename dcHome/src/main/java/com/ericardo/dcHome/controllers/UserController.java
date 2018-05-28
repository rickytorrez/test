package com.ericardo.dcHome.controllers;

import org.springframework.stereotype.Controller;

import com.ericardo.dcHome.services.UserService;

@Controller
public class UserController {

	public UserService _uS;
	
	public UserController(UserService _uS) {
		this._uS = _uS;
	}
	
	
}
