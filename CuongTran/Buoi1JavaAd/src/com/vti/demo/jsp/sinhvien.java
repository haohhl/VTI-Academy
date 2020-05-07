package com.vti.demo.jsp;

import java.util.ArrayList;

public class sinhvien {
	String id, name, school, address, phone;
	int age;
	
	public sinhvien(String id, String name, int age, String school, String address, String phone) {
		this.id=id;
		this.name=name;
		this.age=age;
		this.school=school;
		this.address=address;
		this.phone=phone;
	}
	public String getId() {
		return this.id;
	}
	public String getName() {
		return this.name;
	}
	public int getAge() {
		return this.age;
	}
	public String getSchool() {
		return this.school;
	}
	public String getAddress() {
		return this.address;
	}
	public String getPhone() {
		return this.phone;
	}
	
	static ArrayList<sinhvien> listsv ;
	
	public static ArrayList<sinhvien> create() {
		listsv = new ArrayList<sinhvien>();
		sinhvien sv1 = new sinhvien("1","a",4,"aa","aaa","123");
		sinhvien sv2 = new sinhvien("1","a",6,"aa","aaa","123");
		sinhvien sv3 = new sinhvien("1","a",7,"aa","aaa","123");
		sinhvien sv4 = new sinhvien("1","a",8,"aa","aaa","123");
		sinhvien sv5 = new sinhvien("1","a",9,"aa","aaa","123");
		listsv.add(sv1);
		listsv.add(sv2);
		listsv.add(sv3);
		listsv.add(sv4);
		listsv.add(sv5);
		return listsv;
	}
}
