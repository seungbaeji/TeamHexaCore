package edu.hexa.teamsns.domain;

import java.util.UUID;

public class ManageProjectPartVO {
	private String part_pk;
	private String pid;
	private String user_id;
	private String part;

	public ManageProjectPartVO() {
		part_pk = "pt" + UUID.randomUUID().toString();
	}

	public ManageProjectPartVO(String pid, String user_id, String part) {
		super();
		part_pk = "pt" + UUID.randomUUID().toString();
		this.pid = pid;
		this.user_id = user_id;
		this.part = part;
	}

	public String getPart_pk() {
		return part_pk;
	}

	public void setPart_pk(String part_pk) {
		this.part_pk = part_pk;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPart() {
		return part;
	}

	public void setPart(String part) {
		this.part = part;
	}

}
