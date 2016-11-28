package edu.hexa.leejaehoon.domain;

public class SignUpVO {

	public String user_id;
	public String user_pw;
	public String user_name;
	public String user_nickname;
	public String user_img;
	public String user_number;
	public String user_kkoid;
	public String user_email;
	public String user_level;
	
	public SignUpVO(){}
	
	public SignUpVO(String user_id, String user_pw, String user_name, String user_nickname, String user_img,
			String user_number, String user_kkoid, String user_email) {
		
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_nickname = user_nickname;
		this.user_img = user_img;
		this.user_number = user_number;
		this.user_kkoid = user_kkoid;
		this.user_email = user_email;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_img() {
		return user_img;
	}

	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}

	public String getUser_number() {
		return user_number;
	}

	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}

	public String getUser_kkoid() {
		return user_kkoid;
	}

	public void setUser_kkoid(String user_kkoid) {
		this.user_kkoid = user_kkoid;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_level() {
		return user_level;
	}

	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	
	
	
	
	
} // end class
