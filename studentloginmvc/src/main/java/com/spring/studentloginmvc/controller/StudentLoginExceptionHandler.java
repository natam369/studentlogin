package com.spring.studentloginmvc.controller;

import java.util.Date;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.spring.studentloginmvc.exception.NoSuchStudentException;

@ControllerAdvice
public class StudentLoginExceptionHandler {

	@ExceptionHandler(NoSuchStudentException.class)
	public ModelAndView InvalidStudent(Exception e , Throwable cause ,Model model)
	{
		model.addAttribute("errormessage",e.getLocalizedMessage());
		ModelAndView mview = new ModelAndView();
		mview.addObject("Timestamp", new Date());
		mview.setViewName("errorstudent");
		return mview;
		
	}
	
}
