package edu.hexa.teamsns.domain;

import java.util.Date;

public class ProjectVO {
	private String project_id;
	private String team_id;
	private String projcet_name;
	private String project_category;
	private Date projcet_start;
	private Date project_end;
	private String project_intro;
	private String meeting_area;
	
	public ProjectVO(){}

	public ProjectVO(String project_id, String team_id, String projcet_name, String project_category,
			Date projcet_start, Date project_end, String project_intro, String meeting_area) {
		super();
		this.project_id = project_id;
		this.team_id = team_id;
		this.projcet_name = projcet_name;
		this.project_category = project_category;
		this.projcet_start = projcet_start;
		this.project_end = project_end;
		this.project_intro = project_intro;
		this.meeting_area = meeting_area;
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

	public String getProjcet_name() {
		return projcet_name;
	}

	public void setProjcet_name(String projcet_name) {
		this.projcet_name = projcet_name;
	}

	public String getProject_category() {
		return project_category;
	}

	public void setProject_category(String project_category) {
		this.project_category = project_category;
	}

	public Date getProjcet_start() {
		return projcet_start;
	}

	public void setProjcet_start(Date projcet_start) {
		this.projcet_start = projcet_start;
	}

	public Date getProject_end() {
		return project_end;
	}

	public void setProject_end(Date project_end) {
		this.project_end = project_end;
	}

	public String getProject_intro() {
		return project_intro;
	}

	public void setProject_intro(String project_intro) {
		this.project_intro = project_intro;
	}

	public String getMeeting_area() {
		return meeting_area;
	}

	public void setMeeting_area(String meeting_area) {
		this.meeting_area = meeting_area;
	}
	
}
