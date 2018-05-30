package com.ericardo.dcHome.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ericardo.dcHome.models.User;
import com.ericardo.dcHome.services.UserService;

@Controller
@RequestMapping("/users/")
public class UserController {

	private UserService _uS;
	
	public UserController(UserService _uS) {
		this._uS = _uS;
	}
	
	// Route to Dashboard
	
	@RequestMapping("")
	public String dashboard(Model _model, HttpSession _session) {
		if(!_uS.isValid(_session)) 
			return _uS.redirect();														// Redirect is a method created on User Service
		_model.addAttribute("users", this._uS.all());
		return "dashboard";
	}
	
	// Logout on visiting login / registration
	
	@RequestMapping("/new")
	public String newUser(@ModelAttribute("user") User user, HttpSession _session) {
		_uS.logout(_session);
		return "newUser";
	}
	
	// Create a new user
	
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
				return "redirect:/users";
			} else {
				_flash.addFlashAttribute("error", "A user with this e-mail already exists.");
				return "redirect:users/new";
			}
		}
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession _session,RedirectAttributes _flash){
		if(email.length() < 1){// Dont waste a query.
			_flash.addFlashAttribute("error","Email cannot be blank.");
			return "redirect:/users/new";			
		}

		User user = _uS.findByEmail(email);

		if(user == null){
			_flash.addFlashAttribute("error","No user with this email was found.");
			return "redirect:/users/new";
		}else{
			if(_uS.isMatch(password,user.getPassword())){
				_uS.login(_session,user.getId());

				if(user.isRealtor()){
					return "redirect:/listings/host";
				} else {
				return "redirect:/listings";		
				}
			}else{
				_flash.addFlashAttribute("error","Invalid Credentials");
				return "redirect:/users/new";								
			}
		}
	}
	
	// Log out
	
	@RequestMapping("/logout")
	public String logout(HttpSession _session) {
		return _uS.redirect();
	}

}