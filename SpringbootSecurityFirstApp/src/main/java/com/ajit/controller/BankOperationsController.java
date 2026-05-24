package com.ajit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BankOperationsController {

    @GetMapping("/")
    public String showHome() {
        return "home";   // home.jsp
    }

    @GetMapping("/offers")
    public String showOffers() {
        return "offers"; // offers.jsp
    }

    @GetMapping("/balance")
    public String checkBalance() {
        return "show_balance"; // show_balance.jsp
    }

    @GetMapping("/loanApprove")
    public String approveLoan() {
        return "loan"; // loan.jsp
    }

    @GetMapping("/denied")
    public String accessDenied() {
        return "access_denied"; // access_denied.jsp
    }
}
