package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.ProjectInfoVO;

public interface ProjectInfoDAO {

	public abstract List<ProjectInfoVO> select();
	
	
} // end interface
