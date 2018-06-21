package com.text.service;

import java.util.List;

import com.text.pojo.Emp;

public interface EmpService {
	List<Emp> getAllEmployee();
	Emp getEmpById(int id);
	boolean saveEmployee(Emp emp);
	boolean updateEmployee(Emp emp);
	boolean deleteEmployee(int id);
}
