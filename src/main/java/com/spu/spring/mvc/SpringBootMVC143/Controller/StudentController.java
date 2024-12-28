package com.spu.spring.mvc.SpringBootMVC143.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spu.spring.mvc.SpringBootMVC143.Model.Student;

@Controller
public class StudentController {

	@Autowired
	SessionFactory sf;

	// --------------------------------- Login page with view ------------------------------------------ //
	@RequestMapping("loginpage")
	public String studentpage() {
		return "index";
	}

	@PostMapping("index")
	public Student save(Student student) {
		Session s = sf.openSession();
		Transaction t = s.beginTransaction();
		s.save(student);
		t.commit();
		return student;
	}

	@RequestMapping("viewtable")
	public String viewTable() {
		return "viewtable";		
	}
	
	// ---------------------------------contact page with view---------------------------------------- //
	@RequestMapping("logincpage")
	public String contactpage() {
		return "loginc";
	}

	 
	
	@RequestMapping("viewtablec")
	public String viewTablec() {
		return "viewtablec";		
	}
}
