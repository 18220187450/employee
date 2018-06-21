package com.text.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.text.dao.EmpDao;
import com.text.pojo.Emp;
import com.text.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {
	@Resource
	private EmpDao ed;

	@Override
	public List<Emp> getAllEmployee() {
		return ed.getAllEmployee();
	}

	@Override
	public Emp getEmpById(int id) {
		return ed.getEmpById(id);
	}

	@Override
	public boolean saveEmployee(Emp emp) {
		return ed.saveEmployee(emp);
	}

	@Override
	public boolean updateEmployee(Emp emp) {
		// TODO Auto-generated method stub
		return ed.updateEmployee(emp);
	}

	@Override
	public boolean deleteEmployee(int id) {
		// TODO Auto-generated method stub
		return ed.deleteEmployee(id);
	}

}
