package com.vti.jsp.entity;

public class Student {
	private int stuId;
	private String name;
	private int age;
	private boolean gender;
	private String school;
	private String phoneNumber;
	private String address;

	public Student() {
		super();
	}

	public Student(int stuId, String name, int age, boolean gender, String school, String phoneNumber, String address) {
		super();
		this.stuId = stuId;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.school = school;
		this.phoneNumber = phoneNumber;
		this.address = address;
	}

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getGender() {
		if(this.gender) return "Nam";
		else return "Nữ";
	}
	

}
