package com.ajit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ajit.entity.StudentEntity;
import com.ajit.repository.IStudentRepository;

@Service
public class StudentServiceImpl implements IStudentService {
	
	@Autowired
	IStudentRepository studentRepo;

	@Override
	public String saveStudent(StudentEntity entity) {
		//use repository
		StudentEntity savedStudent = studentRepo.save(entity);
		
		return "Student saved successfully with id: "+savedStudent.getId();
	}

	@Override
	public List<StudentEntity> showAllStudent() {
		List<StudentEntity> listEntity = studentRepo.findAll();
		return listEntity;
	}

	@Override
	public StudentEntity showStudentById(Integer id) {
		StudentEntity entity = studentRepo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid student id"));
		return entity;
	}

	@Override
	public String editStudent(StudentEntity entity) {
		StudentEntity save = studentRepo.save(entity);
		return "Student updated successfully with id: "+save.getId();
	}

	@Override
	public String deleteStudentById(Integer id) {
		boolean  flag= studentRepo.existsById(id);
		if(flag) {
			studentRepo.deleteById(id);
			return "Student deleted successfully with id: "+id;
		}
		return "Student not found with id: "+id;
	}

	@Override
	public Page<StudentEntity> showStudentsByPagination(Pageable pageable) {
		Page<StudentEntity> studentsList = studentRepo.findAll(pageable);
		return studentsList;
	}

}