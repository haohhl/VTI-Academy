//
package com.vti;

import java.util.ArrayList;
import java.util.List;

/**
 * This class is . 
 * 
 * @Description: .
 * @author: TienBui
 * @create_date: Apr 29, 2020
 * @version: 1.0
 * @modifer: TienBui
 * @modifer_date: Apr 29, 2020
 */
public class Danhsachlop { 
	
	public static List<student> danhSach = new ArrayList<student>(); 
	public static int initData() {
			List<student> danhSachSV = new ArrayList<student>();
		danhSachSV.add(new student(1,	"Tien",		21,	"nam",	"neu",	"0963067040", "Thai Binh"));
		danhSachSV.add(new student(2,	"Long",		20,	"nam",	"nuce",	"0972506612", "Nghe An")	);
		danhSachSV.add(new student(3,	"Trang",	21,	"nu",	"neu",	"0963067043", "Hai Duong"));
		danhSachSV.add(new student(4,	"Dat",		22,	"nam",	"hust",	"0963067044", "Nam Dinh"));
		danhSachSV.add(new student(5,	"An",		23,	"nu",	"neu",	"0963067045", "Ha Noi"));
		danhSachSV.add(new student(6,	"Hang",		21,	"nu",	"nuce",	"0963067046", "Thanh Hoa"));
		danhSachSV.add(new student(7,	"Minh",		20,	"nam",	"hust",	"0963067047", "Hai Duong"));
		danhSachSV.add(new student(8,	"Nhung",	23,	"nu",	"neu",	"0963067048", "Hai Phong"));
		danhSachSV.add(new student(9,	"Hung",		20,	"nam",	"neu",	"0963067049", "Nam Dinh"));
		danhSachSV.add(new student(10,	"Nghia",	22,	"nam",	"neu",	"0963067023", "Long An"));
		
		danhSach.addAll(danhSachSV);
		
		return danhSach.size();
	}
	
	
}
