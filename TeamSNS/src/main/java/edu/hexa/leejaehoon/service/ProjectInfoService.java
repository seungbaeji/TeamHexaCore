package edu.hexa.leejaehoon.service;

import java.util.List;

import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

public interface ProjectInfoService {

	public abstract List<ProjectInfoVO> select(String uid);
	
	public abstract int update(RecruitProjectVO vo);
	
	public abstract int update2(ProjectVO vo);
	
	public abstract int update3(RequiredSkillVO vo);
		
} // end interface
