package com.ajit.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@Table(name = "MVC_STUDENT")
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class StudentEntity {

	@Id
	@SequenceGenerator(name = "gen1", sequenceName = "student_id",initialValue = 1001,allocationSize = 1)
	@GeneratedValue(generator = "gen1",strategy = GenerationType.AUTO)
	private Integer id;
	
	@NonNull
	@Column(length = 30)
	private String name;
	
	@NonNull
	@Column(length = 30)
	private String email;
	
	@NonNull
	@Column(length = 30)
	private String course;
	
	@NonNull
	private Double fee;
	
}