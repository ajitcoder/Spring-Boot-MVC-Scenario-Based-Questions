package com.ajit.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ajit.entity.StudentEntity;

public interface IStudentRepository extends JpaRepository<StudentEntity, Integer>{

}