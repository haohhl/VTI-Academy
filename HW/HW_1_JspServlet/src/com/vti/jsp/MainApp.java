package com.vti.jsp;

import java.util.ArrayList;
import java.util.List;



import com.vti.jsp.entity.Student;

public class MainApp {
	private List<Student> stus;
		
	public void CreateListStu() {
		this.stus = new ArrayList<>();
		Student st1 = new Student(1, "Nguyễn Mạnh Hùng", 22, true, "ĐHKTQD", "0123456789", "Hà Nội");
		Student st2 = new Student(2, "Nguyễn Lê Minh", 22, true, "ĐHKTQD", "0234567891", "Bắc Ninh");
		Student st3 = new Student(3, "Lê Quang Huy", 21, true, "ĐHKTQD", "0345678912", "Hà Nội");
		Student st4 = new Student(4, "Việt Anh", 21, true, "ĐHKTQD", "0456789123", "Hà Nội");
		Student st5 = new Student(5, "Vũ Đình Hào", 22, true, "ĐHKTQD", "0567891234", "Hà Nội");
		Student st6 = new Student(6, "Thảo Phương", 18, false, "ĐHKTQD", "0678912345", "Hà Nội");
		Student st7 = new Student(7, "Tiến Hà Văn", 21, true, "ĐHKTQD", "0789123456", "Hà Nội");
		Student st8 = new Student(8, "Tuấn Anh", 22, true, "ĐHKTQD", "0891234567", "Hà Nội");
		Student st9 = new Student(9, "Nhẫn Nhi", 19, true, "ĐHKTQD", "0912345678", "Hà Nội");
		Student st10 = new Student(10, "Hà Văn Hanh", 22, true, "ĐHKTQD", "0987654321", "Hà Nội");
		this.stus.add(st1);
		this.stus.add(st2);
		this.stus.add(st3);
		this.stus.add(st4);
		this.stus.add(st5);
		this.stus.add(st6);
		this.stus.add(st7);
		this.stus.add(st8);
		this.stus.add(st9);
		this.stus.add(st10);		
	}
	
	public List<Student> getListStudent(){
		return this.stus;
	}
	
}
