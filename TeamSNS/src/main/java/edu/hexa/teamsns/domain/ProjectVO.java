package edu.hexa.teamsns.domain;

import java.util.Date;
import java.util.UUID;

public class ProjectVO {
	private String project_id;
	private String team_id;
	private String project_name;
	private String project_category;
	private Date project_start;
	private Date project_end;
	private String project_intro;
	private String meeting_area;
	
	public ProjectVO(){
		project_id = "p" + UUID.randomUUID().toString();
	}

	public ProjectVO(String team_id, String project_name, String project_category,
			Date project_start, Date project_end, String project_intro, String meeting_area) {
		
		project_id = "p" + UUID.randomUUID().toString();
		this.team_id = team_id;
		this.project_name = project_name;
		this.project_category = project_category;
		this.project_start = project_start;
		this.project_end = project_end;
		this.project_intro = project_intro;
		this.meeting_area = meeting_area;
	}

	public String getProject_id() {
		return project_id;
	}

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getproject_name() {
		return project_name;
	}

	public void setproject_name(String project_name) {
		this.project_name = project_name;
	}

	public String getProject_category() {
		return project_category;
	}

	public void setProject_category(String project_category) {
		this.project_category = project_category;
	}

	public Date getproject_start() {
		return project_start;
	}

	public void setproject_start(Date project_start) {
		this.project_start = project_start;
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
