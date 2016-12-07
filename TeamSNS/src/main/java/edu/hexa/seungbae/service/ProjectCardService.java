package edu.hexa.seungbae.service;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;

public interface ProjectCardService {
	
	int create();
	List<ProjectCardDTO>read();
	List<ProjectCardDTO>read(String[] districts);
	int update();
	int delete();
	
}
