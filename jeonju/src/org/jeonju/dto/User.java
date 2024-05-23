package org.jeonju.dto;

public class User {
	private int no;
	private String id;
	private String name;
	private String pw;
	private String email;
	private String phone_num;
	private String address;
	private String resdate;
	public User(int no, String id, String name, String pw, String email, String phone_num, String address,
			String resdate) {
		super();
		this.no = no;
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.email = email;
		this.phone_num = phone_num;
		this.address = address;
		this.resdate = resdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	@Override
	public String toString() {
		return "User [no=" + no + ", id=" + id + ", name=" + name + ", pw=" + pw + ", email=" + email + ", phone_num="
				+ phone_num + ", address=" + address + ", resdate=" + resdate + "]";
	}
	
	
	
	
	
	
}
