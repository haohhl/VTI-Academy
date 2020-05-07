package com.vti.demo.jsp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DemoUtils {
	 static List<String> li = new ArrayList<String>();
	 static String a1 ="q";
	 static String a2 = "w";
	public static List<String> add() {
		li.add(a1);
		li.add(a2);
		return li;
	}
	int a=4;
	int b=3;
	public void getA() {
		System.out.println(a);;
	}
	
}
