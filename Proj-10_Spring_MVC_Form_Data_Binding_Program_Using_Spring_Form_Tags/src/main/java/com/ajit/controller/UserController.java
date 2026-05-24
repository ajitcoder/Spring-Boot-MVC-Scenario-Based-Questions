package com.ajit.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ajit.model.User;

@Controller
public class UserController {

	 @GetMapping("/register")
	    public String showForm(Model model) {
	        model.addAttribute("user", new User()); // empty object
	        return "registerForm"; // JSP page name
	    }

	    @PostMapping("/register")
	    public String submitForm(@ModelAttribute("user") User user, Model model) {
	        // Process submitted data (e.g., save to DB, print to console)
	        System.out.println("User submitted: " + user.getUsername());
	        model.addAttribute("user", user);
	        return "result"; // result JSP page
	    }

}
