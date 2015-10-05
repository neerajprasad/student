package com.mit.mini.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.mit.mini.dao.StudentDao;
import com.mit.mini.model.Student;

@Component
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDao studentDao; 
	
	 @Transactional
	public Student save(Student student) {
		
		return  studentDao.save(student);
	}

	 @Transactional
	public boolean findByLogin(String userName, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	 @Transactional
	public boolean findByUserName(String userName) {
		// TODO Auto-generated method stub
		return false;
	}

}
