package com.spring.mvc.formtaglibrary.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mvc.formtaglibrary.model.Student;

@Controller
public class FormController {

	@GetMapping(value = { "/", "/login", "/index" })
	public String loadRegistrationForm(Model model) {

		Student s = new Student(); // sending form binding object to UI
//		s.setStuName("Talib"); deta sent to form field
		model.addAttribute("student", s);
//		System.out.println(s);

//		Returning logical view name 
		return "registrationForm";
	}

	@PostMapping("/save")
	public String saveDetails(Student stu, Model model) {

//		Student studentDetails2 = new Student(); data is not coming 
//		model.addAttribute("mess", "Submit form successfully..!!"); print messege om UI
		model.addAttribute("student1", stu); // hole object sent to UI

		System.out.println(stu);

		return "submit";
	}
	
//	@PostMapping("/save")
//	public String usingModelAttribute( @ModelAttribute("stu") Student stu , Model model) {
//
////		Student studentDetails2 = new Student(); data is not coming 
////		model.addAttribute("mess", "Submit form successfully..!!"); print messege om UI
//		model.addAttribute("student1", stu); // hole object sent to UI
//
//		System.out.println(stu);
//
//		return "submit";
//	}
//	
}
