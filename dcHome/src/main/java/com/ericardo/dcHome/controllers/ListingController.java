package com.ericardo.dcHome.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.dcHome.models.Listing;
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
	
	@RequestMapping("/realtor")
	public String realtor(HttpSession _session, Model _model, @ModelAttribute("listing") Listing listing) {
		if(_session.getAttribute("id") == null) {
			return "redirec:/users/new";
		}
		
		User user = _uS.find( (Long) _session.getAttribute("id"));
		
		if(!user.isRealtor() && !user.isAdmin()) {
			return "redirect:/listings";
		}
		
		_model.addAttribute("user", user);
		_model.addAttribute("listings", new Listing());
		
		return "realtor";		
	}
	
	@PostMapping("/createListing")
	public String create(@Valid @ModelAttribute("listing") Listing listing, BindingResult _result, HttpSession _session) {
		if(_session.getAttribute("id") == null ) {
			return "redirect:/users/new";
		}
		
		User user = _uS.find( (Long) _session.getAttribute("id") );
		
		if(!user.isRealtor() && !user.isAdmin()) {
			return "redirect:/listings";
		} else {
			if(_result.hasErrors()) {
				return "/listings/realtor";
			} else {
				listing.setUser(user);
				_lS.create(listing);
				return "redirect:/listings/realtor";
			}
		}
	}
}
