package edu.hexa.seungbae.persistence;

import java.util.List;

import edu.hexa.seungbae.domain.ProjectCardDTO;

public interface ProjectCardDAO {
	
	public abstract List<ProjectCardDTO> select();
	public abstract List<ProjectCardDTO> select(String[] districts);
	public abstract ProjectCardDTO select(int pId);
	public abstract int update(ProjectCardDTO dto);
	public abstract int delete(int pId);
	

}
