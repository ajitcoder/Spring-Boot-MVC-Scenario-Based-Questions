package com.ajit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ajit.model.Movie;

@Controller
public class MovieController {

	@GetMapping("/movies")
    public String getMovies(Model model) {
        List<Movie> movieList = new ArrayList<>();
        movieList.add(new Movie(1, "Inception", "Sci-Fi", 8.8, "English"));
        movieList.add(new Movie(2, "RRR", "Action", 8.2, "Telugu"));
        movieList.add(new Movie(3, "Interstellar", "Sci-Fi", 8.6, "English"));
        movieList.add(new Movie(4, "Pushpa", "Action", 7.9, "Telugu"));

        model.addAttribute("movies", movieList);
        return "movie-list";  // maps to movie-list.html
	}
}
