package com.ajit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BankAccount {

	private double accountNumber;
	private String holderName;
	private String accountType;
	private String branch;
	private double balance;
}
