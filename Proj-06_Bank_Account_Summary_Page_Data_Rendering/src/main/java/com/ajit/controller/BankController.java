package com.ajit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ajit.model.BankAccount;

@Controller
public class BankController {
	@GetMapping("/account")
    public String getAccount(Model model) {
        BankAccount account = new BankAccount(
            8210633309L,
            "Ajit Kumar",
            "Savings",
            "Jamshedpur",
            50000
        );
        model.addAttribute("account", account);
        return "account-summary"; // maps to account-summary.html
    }

}
