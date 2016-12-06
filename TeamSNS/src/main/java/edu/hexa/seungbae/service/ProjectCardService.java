package edu.hexa.seungbae.service;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;

public interface ProjectCardService {
	
	int create();
	List<ProjectCardDTO>read();
	int update();
	int delete();
	
}
