package com.ericardo.dcHome.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.dcHome.models.User;
import com.ericardo.dcHome.services.ListingService;
import com.ericardo.dcHome.services.UserService;

@Controller
@RequestMapping("/listings")
public class ListingController {
	
	private ListingService _lS;
	private UserService _uS;
	
	public ListingController(ListingService _lS, UserService _uS) {
		this._lS = _lS;
		this._uS = _uS;
	}
	
	@RequestMapping("")
	public String listing(HttpSession _session, Model _model) {
		User user;
		
		if(_session.getAttribute("id") != null) {
			user = _uS.find((Long) _session.getAttribute("id"));
			_model.addAttribute("user", user);
		}
		_model.addAttribute("listings", _lS.all());
		return "listing";
	}
}
