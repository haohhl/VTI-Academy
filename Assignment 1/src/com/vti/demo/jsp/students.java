package com.vti.demo.jsp;

import java.util.ArrayList;
import java.util.List;

public class students {
	
	private int id;
	private String name;
	private int age;
	private String gender;
	private String school;
	private String phoneNum;
	private String address;
	
	students(int id, String name, int age, String gender, String school, String phoneNum, String address) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.school = school;
		this.phoneNum = phoneNum;
		this.address = address;
	}
	
	public int getId() {
		return this.id;
	}
	public String getName() {
		return this.name;
	}
	public int getAge() {
		return this.age;
	}
	public String getGender() {
		return this.gender;
	}
	public String getSchool() {
		return this.school;
	}
	public String getPhoneNum() {
		return this.phoneNum;
	}
	public String getAddress() {
		return this.address;
	}
	
	public static List<students> createList() {
		List<students> Students = new ArrayList<students>();
		students st0 = new students(0, "Nguyễn Việt Anh"		, 20, "male"	, "neu1", "0123456789", "Hà Nam"	);
		students st1 = new students(1, "le van thanh"			, 21, "male"	, "neu1", "0123456789", "ha nam"	);
		students st2 = new students(2, "nguyen anh tuan"		, 22, "male"	, "neu1", "0123456789", "hai duong"	);
		students st3 = new students(3, "pham manh cuong"		, 19, "male"	, "neu1", "0123456789", "thanh hoa"	);
		students st4 = new students(4, "nguyen tat thanh"		, 20, "male"	, "neu1", "0123456789", "hai phong"	);
		students st5 = new students(5, "bui van tien"			, 21, "male"	, "neu1", "0123456789", "thai binh"	);
		students st6 = new students(6, "ha van tien"			, 22, "male"	, "neu2", "0123456789", "thai binh"	);
		students st7 = new students(7, "cao thi thu thao"		, 18, "female"	, "neu1", "0123456789", "quang ninh");
		students st8 = new students(8, "doan huu duan"			, 20, "male"	, "neu2", "0123456789", "thai binh"	);
		students st9 = new students(9, "nguyen ngoc minh hoa"	, 23, "male"	, "neu1", "0123456789", "hung yen"	);
		students st10 = new students(10,"nguyen hoang thinh"	, 25, "male"	, "neu1", "0123456789", "tuyen quang");
	
		Students.add(st0);
		Students.add(st1);
		Students.add(st2);
		Students.add(st3);
		Students.add(st4);
		Students.add(st5);
		Students.add(st6);
		Students.add(st7);
		Students.add(st8);
		Students.add(st9);
		Students.add(st10);
		return Students;
	}
	
}	
