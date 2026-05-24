package com.ajit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ajit.entity.StudentEntity;
import com.ajit.service.IStudentService;

@Controller
public class StudentOperationController {
	
	@Autowired
	IStudentService studentService;
	
	@GetMapping
	public String showHomePage() {
		//return LVN
		return "home";
	}
	
	@GetMapping("/details")
	public String showStudentDetails(Map<String, Object> map) {
		//use service
		List<StudentEntity> listEntity = studentService.showAllStudent();
		//add to model attribute
		map.put("listEntity", listEntity);
		
		//return LVN
		return "students_details";
	}
	
	@GetMapping("/add")
	public String addStudent(@ModelAttribute("student") StudentEntity entity) {
		
		//return LVN
		return "add_student_form";
	}
	
//	@PostMapping("/add")
//	public String addStudentData(@ModelAttribute("student") StudentEntity entity,Map<String, Object> map) {
//		//use service
//		String result = studentService.saveStudent(entity);
//		
//		//add to model attribute
//		map.put("resultMsg", result);
//		
//		
//		//return LVN
//		return "students_details";
//	}
	


	
//	@PostMapping("/add")
//	public String addStudentData(@ModelAttribute("student") StudentEntity entity,HttpSession ses) {
//		//use service
//		String result = studentService.saveStudent(entity);
//		
//		//add to model attribute
//		ses.setAttribute("resultMsg", result);
//		
//		//return LVN
//		return "redirect:details";
//	}
	
	
	
	@PostMapping("/add")
	public String addStudentData(@ModelAttribute("student") StudentEntity entity,RedirectAttributes attrs) {
		//use service
		String result = studentService.saveStudent(entity);
		
		//add to model attribute
		attrs.addFlashAttribute("resultMsg", result);
		
		
		//return LVN
		return "redirect:details";
	}
	
	@GetMapping("/edit")
	public String showEditStudentFormPage(@ModelAttribute("student")StudentEntity entity,  @RequestParam Integer no) {
		//use the service
		StudentEntity studentEntity = studentService.showStudentById(no);
		//copy studentEntity object to model attribute
		BeanUtils.copyProperties(studentEntity, entity);
		//return LVN
		return "student_edit_form";
	}
	
	@PostMapping("/edit")
	public String editStudent(@ModelAttribute("student") StudentEntity entity,RedirectAttributes attrs) {
		//use service
		String resultMsg = studentService.editStudent(entity);
		attrs.addFlashAttribute("resultMsg", resultMsg);
		return "redirect:details";
	}
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("no") Integer no,Map<String, Object> map) {
		//use service
		String resultMsg = studentService.deleteStudentById(no);
		//add to model
		map.put("resultMsg", resultMsg);
		
		//return LVN
		return "forward:details";
	}
	@GetMapping("/page_details")
	public String showStudentsByPagination(@PageableDefault(page=0,size=4,sort="name",direction = Sort.Direction.ASC)Pageable pageable,Map<String, Object> map) {
		Page<StudentEntity> studentsData = studentService.showStudentsByPagination(pageable);
		
		
		map.put("pageData", studentsData);
		//return LVN
		return "students_pages_details";
	}
	
	

}