package com.text.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.text.pojo.Emp;
import com.text.service.EmpService;

@Controller
public class EmpController {
	@Autowired
	private EmpService eservice;


	@RequestMapping("/")
	public String getallEmp(Model model) {
		List<Emp> employee = eservice.getAllEmployee();
		model.addAttribute("emp",employee);
		return "index";
	}
}
