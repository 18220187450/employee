package com.text.pojo;

import java.util.Date;

public class Emp {
	private int id;
	private String name;
	private String sex;
	private int age;
	private Date csrq;
	public Emp() {
		super();
	}
	public Emp(int id, String name, String sex, int age, Date csrq) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.csrq = csrq;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getCsrq() {
		return csrq;
	}
	public void setCsrq(Date csrq) {
		this.csrq = csrq;
	}
	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", sex=" + sex + ", age=" + age + ", csrq=" + csrq + "]";
	}

}
