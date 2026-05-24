package com.ajit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course {

	private int courseId;
	private String courseName;
	private String instructor;
	private String duration;
	private double price;
	
}
