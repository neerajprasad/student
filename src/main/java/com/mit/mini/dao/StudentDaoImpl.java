package com.mit.mini.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.mit.mini.model.Student;

@Component
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	
	public Student save(Student student) {
		sessionFactory.getCurrentSession().saveOrUpdate(student);
		return student;
	}

	public boolean findByLogin(String userName, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean findByUserName(String userName) {
		// TODO Auto-generated method stub
		return false;
	}

}
