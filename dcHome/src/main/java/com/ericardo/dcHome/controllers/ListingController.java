package com.ericardo.dcHome.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.dcHome.models.Listing;
import com.ericardo.dcHome.models.User;
import com.ericardo.dcHome.services.ListingService;
import com.ericardo.dcHome.services.PictureService;
import com.ericardo.dcHome.services.UserService;

@Controller
@RequestMapping("/listings")
public class ListingController {
	
	@Autowired
	private ListingService _lS;
	
	@Autowired
	private UserService _uS;
	
	@Autowired
	private PictureService _pS;
	
	/*************************************** VIEW LISTINGS  **********************************/
	
	@RequestMapping("")
	public String listing(HttpSession _session, Model _model) {
		User user;
		
		if(_session.getAttribute("id") != null) {
			user = _uS.find((Long) _session.getAttribute("id"));
			_model.addAttribute("user", user);
		}
		_model.addAttribute("listings", _lS.all());
		return "listings";
	}
	
	/*************************************** REALTOR PORTAL *********************************/

	@RequestMapping("/realtor")
	public String realtor(HttpSession _session, Model _model, @ModelAttribute("listing") Listing listing) {
		if(_session.getAttribute("id") == null) {
			return "redirect:/users/new";
		}
		
		User user = _uS.find( (Long) _session.getAttribute("id"));
		
		if(!user.isRealtor() && !user.isAdmin()) {
			return "redirect:/listings";
		}
		
		_model.addAttribute("user", user);
		_model.addAttribute("listing", new Listing());
		
		return "realtor";		
	}
	
	/*************************************** CREATE LISTING **********************************/
	
	@PostMapping("/createListing")
	public String create(@Valid @ModelAttribute("listing") Listing listing, BindingResult _result, HttpSession _session, Model _model) {
		if(_session.getAttribute("id") == null ) {
			return "redirect:/users/new";
		}
		
		User user = _uS.find( (Long) _session.getAttribute("id") );
		
			listing.setUser(user);
			_lS.create(listing);
			return "redirect:/listings/realtor";		
	}
	/*************************************** DISPLAY SINGLE LISTING **************************/
	
	@RequestMapping("{id}/edit")
	public String displaySingleListing(@PathVariable("id") Long id, Model _model, HttpSession _session) {
		if(_session.getAttribute("id") != null) {
			
		}
	}
	
	
	
	/*************************************** ADD IMAGES **************************************/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
