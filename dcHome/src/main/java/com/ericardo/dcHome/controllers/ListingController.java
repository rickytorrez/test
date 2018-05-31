package com.ericardo.dcHome.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

	/*************************************** VIEW LISTINGS  **********************************/
	
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
		_model.addAttribute("listings", new Listing());
		
		return "realtor";		
	}
	
	/*************************************** CREATE LISTING **********************************/
	
	@PostMapping("/createListing")
	public String create(@Valid @ModelAttribute("listing") Listing listing, BindingResult _result, HttpSession _session, @RequestParam("file") MultipartFile file) {
		if(_session.getAttribute("id") == null ) {
			return "redirect:/users/new";
		}
		
		User user = _uS.find( (Long) _session.getAttribute("id") );
		
		if(!user.isRealtor() && !user.isAdmin()) {
			return "redirect:/listings";
		} else {
			if(_result.hasErrors()) {
				return "realtor";
			} else if(!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();
					
					// creating the directory to store file
					File dir = new File("src/main/webapp/images");
					if(!dir.exists())
						dir.mkdir();
					
					// create the file on server
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator + file.getOriginalFilename());
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					
					// adding it to my datebase
					listing.setUser(user);
					listing.setPicture(file.getOriginalFilename());
					_lS.create(listing);
				} catch (Exception e) {
					return "redirect:/listings/realtor";
				}
			} else if (file.isEmpty()) {
				listing.setUser(user);
				_lS.create(listing);
				return "redirect:/listings/realtor";
			}
			return "redirect:/listings/realtor";
		}
	}
}
