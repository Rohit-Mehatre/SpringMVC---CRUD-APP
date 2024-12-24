package com.cjc.controller;

import java.util.ArrayList;
import java.util.List;
import com.cjc.model.Student;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	List<Student> list = new ArrayList<Student>();
	
	@RequestMapping("/")
	public String preLogin() {
		return "login";
	}
	
	@RequestMapping("/openorg")
	public String preRegister() {
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute Student s) {
		list.add(s);
		return "login";
	}
	
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("username") String username, @RequestParam("password") String password, Model m) {
		if(username.equals("admin") && password.equals("admin")) {
			m.addAttribute("data", list);
			return "success";
		}else {
			for(Student s : list) {
				if(username.equals(s.getUsername()) && password.equals(s.getPassword())) {
					List<Student> l = new ArrayList<Student>();
					l.add(s);
					m.addAttribute("data",l);
					return "success";
				}else {
					return "login";
				}
			}
		}
		
		return "login";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("rollno") int rollno, Model m) {
		for(Student stu: list) {
			if(stu.getRollno() ==rollno) {
				list.remove(stu);
				m.addAttribute("data",list);
				break;
			}
		}
		return "success";
	}
	
	@RequestMapping("/update")
	public String preUpdate(@RequestParam("rollno") int rollno, Model m) {
	    for (Student stu : list) {
	        if (stu.getRollno() == rollno) {
	            m.addAttribute("student", stu);
	            break;
	        }
	    }
	    return "update";
	}
	
	@RequestMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student updatedStudent, Model m) {
	    for (Student stu : list) {
	        if (stu.getRollno() == updatedStudent.getRollno()) {
	            stu.setName(updatedStudent.getName());
	            stu.setUsername(updatedStudent.getUsername());
	            stu.setPassword(updatedStudent.getPassword());
	            break;
	        }
	    }
	    m.addAttribute("data", list);
	    return "success";
	}
}
