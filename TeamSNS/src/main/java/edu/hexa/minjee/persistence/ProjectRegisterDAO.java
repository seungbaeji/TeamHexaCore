package edu.hexa.minjee.persistence;

import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;

public interface ProjectRegisterDAO {
	public abstract int insert(ProjectVO pvo);
	public abstract int insert(ManageProjectPartVO mvo);
	public abstract int insert(RequiredSkillVO rvo);
	public abstract int insert(RecruitProjectVO rpvo);
}
