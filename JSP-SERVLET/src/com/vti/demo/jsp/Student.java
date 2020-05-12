//
package com.vti.demo.jsp;
import java.util.ArrayList;
import java.util.List;

/**
 * This class is . 
 * 
 * @Description: .
 * @author: DoTienAnh
 * @create_date: May 6, 2020
 * @version: 1.0
 * @modifer: DoTienAnh
 * @modifer_date: May 6, 2020
 */
public class Student {
	private String id;
	private String name;
	private int age;
	private String gender;
	private String school;
	private String phoneNumver;
	private String address;
	
	public Student(String id, String name, int age, String gender, String school, String phoneNumber, String address) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.school =school;
		this.phoneNumver = phoneNumber;
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
		return phoneNumver;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumver = phoneNumber;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	static List<Student> listStudent = new ArrayList<Student>();
	
	static Student student01 = new Student("SV01","Đỗ Tiến Anh", 22, "Male", "Neu", "0988123456", "Hà Nội");
	static Student student02 = new Student("SV02","Trịnh Khánh Huyền", 20, "Female", "Neu", "0988123456", "Thái Bình");
	static Student student03 = new Student("SV03","Nông Thế Nhật", 22, "Male", "Neu", "0988123456", "Thái Bình");
	static Student student04 = new Student("SV04","Hà Văn Tiến", 22, "Female", "Neu", "0988123456", "Hà Nội");
	static Student student05 = new Student("SV05","Phạm THị Thu Hoài", 22, "Female", "Neu", "0988123456", "Hà Nội");
	static Student student06 = new Student("SV06","Bùi Huyền Trang", 22, "Female", "Neu", "0988123456", "Thái Bình");
	static Student student07 = new Student("SV07","Vũ Mạnh Nhất", 22, "Male", "Neu", "0988123456", "Hà Nội");
	static Student student08 = new Student("SV08","Nguyễn Xuân Kiên", 22, "Male", "Neu", "0988123456", "Hà Nội");
	static Student student09 = new Student("SV09","Phạm Tiến Thịnh", 22, "Male", "Neu", "0988123456", "Hà Nội");
	static Student student10 = new Student("SV10","Đỗ Tiến Anh", 22, "Male", "Neu", "0988123456", "Hà Nội");
	
	public static List<Student> add() {
		listStudent.add(student01);
		listStudent.add(student02);
		listStudent.add(student03);
		listStudent.add(student04);
		listStudent.add(student05);
		listStudent.add(student06);
		listStudent.add(student07);
		listStudent.add(student08);
		listStudent.add(student09);
		listStudent.add(student10);
		return listStudent;
	}
		
}
