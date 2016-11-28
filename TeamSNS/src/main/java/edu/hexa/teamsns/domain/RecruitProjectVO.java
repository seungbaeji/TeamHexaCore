package edu.hexa.teamsns.domain;

import java.util.Date;

public class RecruitProjectVO {
	
	private int recruit_bno;
	private String project_id;
	private String team_id;
	private String recruit_title;
	private Date recruit_start;
	private Date recruit_end;
	private int recruit_hits;
	
	public RecruitProjectVO(){}

	public RecruitProjectVO(int recruit_bno, String project_id, String team_id, String recruit_title,
			Date recruit_start, Date recruit_end, int recruit_hits) {
		super();
		this.recruit_bno = recruit_bno;
		this.project_id = project_id;
		this.team_id = team_id;
		this.recruit_title = recruit_title;
		this.recruit_start = recruit_start;
		this.recruit_end = recruit_end;
		this.recruit_hits = recruit_hits;
	}

	public int getRecruit_bno() {
		return recruit_bno;
	}

	public void setRecruit_bno(int recruit_bno) {
		this.recruit_bno = recruit_bno;
	}

	public String getProject_id() {
		return project_id;
	}

	public void setProject_id(String project_id) {
		this.project_id = project_id;
	}

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getRecruit_title() {
		return recruit_title;
	}

	public void setRecruit_title(String recruit_title) {
		this.recruit_title = recruit_title;
	}

	public Date getRecruit_start() {
		return recruit_start;
	}

	public void setRecruit_start(Date recruit_start) {
		this.recruit_start = recruit_start;
	}

	public Date getRecruit_end() {
		return recruit_end;
	}

	public void setRecruit_end(Date recruit_end) {
		this.recruit_end = recruit_end;
	}

	public int getRecruit_hits() {
		return recruit_hits;
	}

	public void setRecruit_hits(int recruit_hits) {
		this.recruit_hits = recruit_hits;
	}

}
