package com.ajit.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ajit.entity.StudentEntity;

public interface IStudentService {

	public String saveStudent(StudentEntity entity);
	public List<StudentEntity> showAllStudent();
	public StudentEntity showStudentById(Integer id);
	public String editStudent(StudentEntity entity);
	public String deleteStudentById(Integer id);
	public Page<StudentEntity> showStudentsByPagination(Pageable pageable);
}