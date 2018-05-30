package com.ericardo.dcHome.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ericardo.dcHome.models.User;
import com.ericardo.dcHome.services.UserService;


@Controller
@RequestMapping("/")
public class RouteController {
	
	@Autowired
	private UserService _uS;
	
	@RequestMapping("")
	public String index(HttpServletRequest _request, HttpSession _session) {
		if(!_uS.isValid(_session)) {
			return "redirect:/users/new";
		} else {
			User user = _uS.find((Long) _session.getAttribute("id"));
			
			if(user.isRealtor()) {
				return "redirect:/listings/realtor";
			} else {
				return "redirect:/listings";
			}
		}
	}
}
