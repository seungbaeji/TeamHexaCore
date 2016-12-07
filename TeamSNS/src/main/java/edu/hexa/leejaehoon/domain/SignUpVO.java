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
	public String user_level;
	
	public SignUpVO(){}
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








	public String getUser_id() {
		return uid;
	}

	public void setUser_id(String user_id) {
		this.uid = user_id;
	}

	public String getUser_pw() {
		return pw;
	}

	public void setUser_pw(String user_pw) {
		this.pw = user_pw;
	}

	public String getUser_name() {
		return name;
	}

	public void setUser_name(String user_name) {
		this.name = user_name;
	}

	public String getUser_nickname() {
		return nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.nickname = user_nickname;
	}

	public String getUser_img() {
		return profile_img;
	}

	public void setUser_img(String user_img) {
		this.profile_img = user_img;
	}

	public String getUser_number() {
		return phone;
	}

	public void setUser_number(String user_number) {
		this.phone = user_number;
	}

	public String getUser_kkoid() {
		return kkoid;
	}

	public void setUser_kkoid(String user_kkoid) {
		this.kkoid = user_kkoid;
	}

	public String getUser_email() {
		return email;
	}

	public void setUser_email(String user_email) {
		this.email = user_email;
	}

	public String getUser_level() {
		return user_level;
	}

	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	
	
	
	
	
} // end class
