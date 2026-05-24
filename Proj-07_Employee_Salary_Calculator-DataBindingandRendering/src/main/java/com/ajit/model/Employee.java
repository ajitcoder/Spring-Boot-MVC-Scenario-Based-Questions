package com.ajit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {

	
	private String name;
	private double basicSalary;
	private double hra;
	private double taxPercentage;
	
}
