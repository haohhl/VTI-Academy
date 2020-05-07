package com.vti.demo.jsp;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class danhsach {
	String name, age;
	Scanner s = new Scanner(System.in);
	String[] listds;
	public void addList() {
		System.out.println("Nhap so luong: ");
		int n = s.nextInt();
		for(int i=0; i<n;i++) {
		
		}
	}
	
	public void addd() {
		System.out.println("Nhap name: ");
		name = s.nextLine();
		System.out.println("Nhap age: ");
		age = s.nextLine();
	}
	
	public void setName() {
		this.name=name;
	}
	
	public void setAge() {
		this.age=age;
	}
	
	public String getName() {
		return name;
	}
	
	public String getAge() {
		return age;
	}
	
	
}
