package com.ajit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MessageComtroller {

	@GetMapping("messages")
	public String showMessage (Model model) {
		 List<String> messages = new ArrayList<>();
	        messages.add("Welcome!");
	        messages.add("Spring Boot is fun!");
	        messages.add("Keep Learning!");

	        model.addAttribute("messages", messages);
	        return "message"; // maps to messages.jsp

	}
}
