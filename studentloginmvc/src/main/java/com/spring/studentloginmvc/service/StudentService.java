package com.spring.studentloginmvc.service;

import com.spring.studentloginmvc.entity.Student;
import com.spring.studentloginmvc.exception.NoSuchStudentException;

public interface StudentService {

	Student validateAndGetDetails(String name, String password) throws NoSuchStudentException;

	void saveStudent(Student student);

}
