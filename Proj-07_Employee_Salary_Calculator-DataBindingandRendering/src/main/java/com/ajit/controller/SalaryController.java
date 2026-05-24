package com.ajit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ajit.model.Employee;

@Controller
public class SalaryController {

	 @GetMapping("/salary-form")
	    public String showForm(Model model) {
	        model.addAttribute("employee", new Employee());
	        return "salary-form";
	    }

	    @PostMapping("/calculate-salary")
	    public String calculateSalary(@ModelAttribute Employee employee, Model model) {
	        double gross = employee.getBasicSalary() + employee.getHra();
	        double tax = gross * (employee.getTaxPercentage() / 100);
	        double netSalary = gross - tax;

	        model.addAttribute("netSalary", netSalary);
	        return "salary-result";
	    }

}
