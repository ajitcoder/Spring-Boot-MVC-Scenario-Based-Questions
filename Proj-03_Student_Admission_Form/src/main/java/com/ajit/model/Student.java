package com.ajit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {

	private String studentName;
	private Integer rollNumber;
	private String dateOfBirth;
	private String course;
	private Long contactNumber;
}
