/**
 * 
 */
package com.vti.demo.jsp;

/**
* This class is student.
*
* @Description: .
* @author: HuongLT
* @create_date: Apr 28, 2020
* @version: 1.0
* @modifer: HuongLT
* @modifer_date: Apr 28, 2020
*/
public class Student {
	protected int id;
	protected String name; 
	protected int age;
	protected String gender;
	protected String school;
	protected String phoneNumber; 
	protected String address;
	
	public Student(int id, String name, int age, String gender, String school, String phoneNumber, String address) {
		super();
		this.id=id;
		this.name=name;
		this.age=age;
		this.gender=gender;
		this.school=school;
		this.phoneNumber=phoneNumber;
		this.address=address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
	

}
