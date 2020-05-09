package com.spring.studentloginmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.studentloginmvc.entity.Student;
import com.spring.studentloginmvc.exception.NoSuchStudentException;
import com.spring.studentloginmvc.service.StudentService;
import com.spring.studentloginmvc.service.StudentServiceImplementation;

@Controller
public class StudentController {

	@Autowired
	StudentService studentService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index() {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}

	@RequestMapping("/savestudent")
	public String registerstudent( Student student) {

		studentService.saveStudent(student);
		return "home";
	}

	@RequestMapping("/details")
	public ModelAndView getdetails(@RequestParam("name") String name, @RequestParam("password") String password,
			Model model) throws NoSuchStudentException {
		Student student = studentService.validateAndGetDetails(name, password);
		model.addAttribute("student", student);
		ModelAndView modelandview = new ModelAndView();
		modelandview.setViewName("display");
		return modelandview;
	}

}
