package com.ajit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ajit.model.Course;

@Controller
public class OnlineCourseDashboardController {

	@GetMapping("/courses")
    public String getCourses(Model model) {
        List<Course> courseList = new ArrayList<>();

        courseList.add(new Course(1, "Java Full Stack", "Mr.Ravi Sir", "6 Months", 25000));
        courseList.add(new Course(2, "Spring Boot", "Mr. Nataraz sir ", "2 Months", 12000));
        courseList.add(new Course(3, "Oracle", "Mr. Vijay Kumar ", "3 Months", 5000));

        model.addAttribute("courses", courseList);
        return "course-list";
	}
}
