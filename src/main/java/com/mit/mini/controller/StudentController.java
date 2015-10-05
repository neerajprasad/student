package com.mit.mini.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.mit.mini.model.Student;
import com.mit.mini.model.StudentLogin;
import com.mit.mini.service.StudentService;


@Controller
public class StudentController {

    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
       return new ModelAndView("login", "student", new StudentLogin());
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registration() {
       return new ModelAndView("studentRegistration", "student", new Student());
    }
    
    
    @RequestMapping(value = "/loginController", method = RequestMethod.POST)
    public String home(@ModelAttribute("student") StudentLogin student, ModelMap model) {
    	if(student.getUserName().equals("admin") && student.getPassword().equals("manipal"))
    	{
    		return "home";
    	}else
    	{
    		return "invalidPage";
    	}
    
    }
    
    @RequestMapping(value = "/addController", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("student") Student student, ModelMap model) {
    	System.out.println("insdide addController");
    	studentService.save(student);
    	return "success";
    
    }

}
