package edu.hexa.leejaehoon.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.leejaehoon.domain.MyApplyDTO;
import edu.hexa.leejaehoon.domain.MyCandidateDTO;
import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;

@Repository
public class ProjectInfoDAOImple implements ProjectInfoDAO {

	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoDAOImple.class);
	
	private static final String NAMESPCAE = "edu.hexa.leejaehoon.projectinfo";
	
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public List<ProjectInfoVO> select(String uid) {
		 
		List<ProjectInfoVO> list = sqlsession.selectList(NAMESPCAE + ".selectProject", uid);
		
		return list;
	}

	@Override
	public int update(RecruitProjectVO vo) {
			logger.info("dao = " + vo);
			
			
		return sqlsession.update(NAMESPCAE + ".update-recruit", vo);
	}

	@Override
	public int update2(ProjectVO vo) {
		 
		return sqlsession.update(NAMESPCAE + ".update-project", vo);
	}

	@Override
	public int update3(RequiredSkillVO vo) {
		
		return sqlsession.update(NAMESPCAE + ".update-skill", vo);
	}
	
	// hshs : 지원목록 리스트
	@Override
	public List<MyApplyDTO> select_myapply(String uid) {
		List<MyApplyDTO> applyDTO = sqlsession.selectList(NAMESPCAE + ".select-myapply", uid);
		return applyDTO;
	}
	
	// 지원자 관리
	@Override
	public List<MyCandidateDTO> select_candidate(String uid) {
		List<MyCandidateDTO> candidateDTO = sqlsession.selectList(NAMESPCAE + ".select-mycandidate", uid);
		return candidateDTO;
	}
	
	// 지원자 거절
	@Override
	public int applyReject(String part_pk, String user_id) {
		Map<String, String> args = new HashMap<>();
		args.put("part_pk", part_pk);
		args.put("user_id", user_id);
		int result = sqlsession.update(NAMESPCAE + ".apply-reject", args);
		return result;
	}

	

}
