package com.vti.demo.jsp;

import java.util.ArrayList;
import java.util.List;

public class Students {
	String id; 
	int age;
	String name;
	String gender;
	String phone;
	String school;
	String address;
	
	public Students(String id, int age, String name, String gender, String phone,String school, String address) {
		this.id = id;
		this.age = age;
		this.name = name;
		this.gender = gender;
		this.phone = phone;
		this.school = school;
		this.address = address;
	}
	public String getId() {
		return this.id;
	}
	public String getName() {
		return this.name;
	}
	public String getGender() {
		return this.gender;
	}
	public String getPhone() {
		return this.phone;
	}
	public String getSchool() {
		return this.school;
	}
	public String getAddress() {
		return this.address;
	}
	public int getAge() {
		return this.age;
	}
	
	static ArrayList<Students> listStudent;
	public static ArrayList<Students> createList(){
		listStudent = new ArrayList<Students>();
		Students st1 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st2 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st3 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st4 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st5 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st6 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st7 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st8 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st9 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		Students st10 = new Students("1", 20, "ha van tien", "nam", "0383751999", "Neu", "Minh Khai");
		listStudent.add(st1);
		listStudent.add(st2);
		listStudent.add(st3);
		listStudent.add(st4);
		listStudent.add(st5);
		listStudent.add(st6);
		listStudent.add(st7);
		listStudent.add(st8);
		listStudent.add(st9);
		listStudent.add(st10);
		return listStudent;
		
	}
	
	
	
	
}
