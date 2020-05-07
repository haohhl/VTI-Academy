package com.vti.demo.jsp;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class list {
	Scanner s = new Scanner(System.in);
	List<danhsach> listds = new ArrayList<>();
	public void ds() {
		
		System.out.println("Nhap so n: ");
		int n = s.nextInt();
		for(int i =0; i<n;i++) {
			listds.add(new danhsach());
			listds.get(i).addd();
		}
	}	
	
	public void show() {
		for(int j=0;j<listds.size();j++) {
			System.out.println(listds);
		}
	}
}
