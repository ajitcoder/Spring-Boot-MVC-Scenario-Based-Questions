package com.ajit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ajit.model.StudentEntity;

public interface IStudentRepository extends JpaRepository<StudentEntity,Long>{

}