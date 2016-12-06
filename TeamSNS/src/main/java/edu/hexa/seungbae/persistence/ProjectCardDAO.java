package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;

public interface ProjectCardDAO {
	
	List<ProjectCardDTO> select();
	List<ProjectCardDTO> select(String district);
	ProjectCardDTO select(int pId);
	int update(ProjectCardDTO dto);
	int delete(int pId);

}
