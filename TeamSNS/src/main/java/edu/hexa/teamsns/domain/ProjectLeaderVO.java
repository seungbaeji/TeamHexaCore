package edu.hexa.teamsns.domain;

public class ProjectLeaderVO {

	private String pid;
	private String leader_uid;

	public ProjectLeaderVO(String pid, String leader_uid) {
		this.pid = pid;
		this.leader_uid = leader_uid;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getLeader_uid() {
		return leader_uid;
	}

	public void setLeader_uid(String leader_uid) {
		this.leader_uid = leader_uid;
	}

}
