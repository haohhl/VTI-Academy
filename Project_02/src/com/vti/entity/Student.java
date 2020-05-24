/**
 * 
 */
package com.vti.entity;

/**
* This class is .
*
* @Description: .
* @author: HuongLT
* @create_date: May 14, 2020
* @version: 1.0
* @modifer: HuongLT
* @modifer_date: May 14, 2020
*/
public class Student {
	
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	
	
	/**
	* Constructor for class Student.
	*
	* @Description: .
	* @author: HuongLT
	* @create_date: May 14, 2020
	* @version: 1.0
	* @modifer: HuongLT
	* @modifer_date: May 14, 2020
	* @param id
	* @param first_name
	* @param last_name
	* @param email
	*/
	public Student(int id, String firstName, String lastName, String email) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
