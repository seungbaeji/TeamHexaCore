package edu.hexa.minjee.service;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;

// CRUD
public interface ProjectRegisterService {
	public abstract int create(ProjectVO pvo);
	public abstract int create(ManageProjectPartVO mvo);
	public abstract int create(RequiredSkillVO rvo);
	public abstract int create(RecruitProjectVO rpvo);
}
