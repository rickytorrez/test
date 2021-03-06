package com.ericardo.dcHome.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ericardo.dcHome.models.Listing;
import com.ericardo.dcHome.models.User;
import com.ericardo.dcHome.services.ListingService;
import com.ericardo.dcHome.services.MessageService;
import com.ericardo.dcHome.services.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	private UserService _uS;
	
	@Autowired
	private ListingService _lS;
	
	@Autowired
	private MessageService _mS;
	
	/*************************************** REGISTRATION ************************************/
	/*************************************** REG/LOGIN ***************************************/
	@RequestMapping("/new")
	public String newUser(@ModelAttribute("user") User user, HttpSession _session, Model _model) {
		_uS.logout(_session);
		
		_model.addAttribute("allListings", _lS.all());
		System.out.println("All Listings:");
		System.out.println(_lS.all());
		return "home";
	}
	
	/*************************************** SEARCH BAR *************************************/
	
	public boolean scrub(String needle, String haystack) {								
		needle = needle.toLowerCase();												
		
		for(int j=0; j<haystack.length()-needle.length()+1;j++) {						
			String result = haystack.substring(j, j+needle.length()).toLowerCase();

			if(result.indexOf(needle) != -1) {
				return true;
			}
		}
		return false;
	}

	@RequestMapping("/search")
	public String search(@RequestParam("search") String search, HttpSession _session, Model _model) {
		search = search.toLowerCase();
		
		ArrayList<Listing> allListings = _lS.all();
		System.out.println("Previous All listings");
		System.out.println(allListings);
		ArrayList<Listing> listings = new ArrayList<Listing>();
		System.out.println("Previous Listings new array:");
		System.out.println(listings);
		
		for(Listing listing: allListings) {
			if(scrub(search, listing.getAddress()) && !listings.contains(listing)) {				
				listings.add(listing);
			}
			if(scrub(search, listing.getType()) && !listings.contains(listing)) {					
				listings.add(listing);
			}
			if(scrub(search, Double.toString(listing.getCost())) && !listings.contains(listing)) {	
				listings.add(listing);
			}
		}
		
		_model.addAttribute("listings", listings);
		System.out.println("Updated listings");
		System.out.println(listings);
		return "home";
	}
	
	/*************************************** POST NEW USER ***********************************/
	@PostMapping("/new")
	public String create(@Valid @ModelAttribute("user") User user, BindingResult _result, RedirectAttributes _flash, HttpSession _session) {
		if(_result.hasErrors()) {
			_flash.addFlashAttribute("errors", _result.getAllErrors());
			return "redirect:/users/new";
		} else {
			User exists = _uS.findByEmail(user.getEmail());		
			
			if(exists == null) {
				User _user = _uS.create(user);
				_uS.login(_session, _user.getId());
				return "redirect:/listings";
			} else {
				_flash.addFlashAttribute("error", "A user wtih this e-mail already exists.");
				return "redirect:/users/new";
			}
		}
	}

	/*************************************** LOGIN USER **************************************/
	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession _session, RedirectAttributes _flash) {
		if(email.length() < 1) {
			_flash.addFlashAttribute("error", "E-mail cannot be blank.");
			return "redirect:/users/new";
		}
		
		User user = _uS.findByEmail(email);
		
		if(user == null) {
			_flash.addFlashAttribute("error", "No user with this e-mail found.");
			return "redirect:/users/new";
		} else {
			if(_uS.isMatch(password, user.getPassword())) {
				_uS.login(_session, user.getId());
				
				if(user.isAdmin()) {
					System.out.println("admin login route in UC");
					return "redirect:/users/dashboard";
				}
				
				if(user.isRealtor()) {
					System.out.println("realtor route in UC");
					return "redirect:/listings/realtor";		
				} else {
					System.out.println("buyer route in UC");
					return "redirect:/listings";
				}
			} else {
				_flash.addFlashAttribute("error", "Invalid Credentials");
				return "redirect:/users/new";
			}
		}
	}
	
	/*************************************** LOGOUT USER *************************************/

	@RequestMapping("/logout")
	public String logout(HttpSession _session) {
		return _uS.redirect();
	}
	
	/*************************************** ADMIN SIDE **************************************/
	/*************************************** ADMIN DASHBOARD *********************************/
	@RequestMapping("dashboard")
	public String dashboard(Model _model, HttpSession _session) {
		if(!_uS.isValid(_session)) 
			return _uS.redirect();
		
		User user = _uS.find( (Long) _session.getAttribute("id"));
		
		_model.addAttribute("user", user);
		_model.addAttribute("users", _uS.all());		
		_model.addAttribute("listings", _lS.all());
		_model.addAttribute("messages", _mS.all());
		return "dashboard";
	}
}