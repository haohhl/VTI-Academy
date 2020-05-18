package com.vti.demo.jsp;

/**
 * @author Administrator
 *
 */
public class Student {
	
	private String id;
	private String name;
	private int age;
	private String gender;
	private String school;
	private String phoneNumber;
	private String address;
	
	public Student(String id, String name, int age, String gender, String school, String phoneNumber, String address) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.school = school;
		this.phoneNumber = phoneNumber;
		this.address = address;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
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
	
	public static void main(String[] args) {
		
		//List<Student> listStudent = new ArrayList<>();
		
		//Student student01 = new Student("SV01", "Cao Trang", 20, "Female", "NEU", "0123123123", "Hai Duong");
		//listStudent.add(student01);
	}
	
}
