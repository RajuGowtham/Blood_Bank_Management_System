package com.likith.bean;
//functions for getting values and updating values
public class User {
	private int id;
	private String name;
	private String mobile;
	private String blood;
	private String volume;
	private String address;
	private String date;
	private String gmail;
	private String password;
	public int getid() { return this.id;}
	public void setid(int id) {this.id=id;}
	//gmail
	public String getgmail() { return this.gmail;}
	public void setgmail(String gmail) {this.gmail=gmail;}
	//password
	public String getpassword() { return this.password;}
	public void setpassword(String password) {this.password=password;}
	//name
	public String getname() {return this.name;}
	public void setname(String name) {this.name=name;}
	//mobile
	public String getmobile() {return this.mobile;}
	public void setmobile(String mobile) {this.mobile=mobile;}
	//blood
	public String getblood() {return this.blood;}
	public void setblood(String blood) {this.blood=blood;}
	//volume
	public String getvolume() {return this.volume;}
	public void setvolume(String volume) {this.volume=volume;}
	//address
	public String getaddress() {return this.address;}
	public void setaddress(String address) {this.address=address;}
	//date
	public String getdate() {return this.date;}
	public void setdate(String date) {this.date=date;}
}

