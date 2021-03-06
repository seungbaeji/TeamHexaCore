package edu.hexa.leejaehoon.domain;

public class SignUpVO {

	public String uid;
	public String pw;
	public String name;
	public String nickname;
	public String profile_img;
	public String phone;
	public String kkoid;
	public String email;
	public int gender;
	public String birth;
	public String address;
	public String user_level;
	
	public SignUpVO(){}
	
	public SignUpVO(String uid, String pw, String name, String nickname, String profile_img, String phone, String kkoid,
			String email, int gender, String birth, String address, String user_level) {
		super();
		this.uid = uid;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.profile_img = profile_img;
		this.phone = phone;
		this.kkoid = kkoid;
		this.email = email;
		this.gender = gender;
		this.birth = birth;
		this.address = address;
		this.user_level = user_level;
	}
	
	
	public SignUpVO(String uid, String pw, String name, String nickname, String profile_img, String phone, String kkoid,
			String email, String user_level) {
		
		this.uid = uid;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.profile_img = profile_img;
		this.phone = phone;
		this.kkoid = kkoid;
		this.email = email;
		this.user_level = user_level;
	}
	


	public SignUpVO(String uid, String pw) {
		super();
		this.uid = uid;
		this.pw = pw;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getKkoid() {
		return kkoid;
	}
	public void setKkoid(String kkoid) {
		this.kkoid = kkoid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUser_level() {
		return user_level;
	}
	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	








	
	
	
	
} // end class
