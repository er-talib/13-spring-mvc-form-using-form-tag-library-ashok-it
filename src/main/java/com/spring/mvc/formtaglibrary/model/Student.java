package com.spring.mvc.formtaglibrary.model;



import lombok.Data;

@Data
public class Student {

	private int stuRollNumder;
	private String stuName;
	private String email;
	private String password;
	private Long phone;
	private String course;
	private String gender;
	private String[] preferrableTimings;



}
