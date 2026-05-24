package com.ajit.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Movie {

	private int movieID;
	private String title;
	private String genre;
	private double rating;
	private String language;
}
