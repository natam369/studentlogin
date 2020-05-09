package com.spring.studentloginmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.studentloginmvc.entity.Student;
import com.spring.studentloginmvc.exception.NoSuchStudentException;
import com.spring.studentloginmvc.repository.StudentRepository;

@Service
public class StudentServiceImplementation implements StudentService{

	@Autowired
	StudentRepository studentRepo;
	
	public Student validateAndGetDetails(String name, String password) throws NoSuchStudentException {
		// TODO Auto-generated method stub
		Student student = studentRepo.findByName(name);
		if(!(student.getPassword().equals(password)))
			throw new NoSuchStudentException("Invalid Student");
		return student;
 
	}

	@Override
	public void saveStudent(Student student) {
		// TODO Auto-generated method stub
		studentRepo.save(student);		
	}

}
