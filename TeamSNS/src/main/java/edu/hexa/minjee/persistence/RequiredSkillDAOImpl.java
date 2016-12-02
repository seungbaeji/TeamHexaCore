package edu.hexa.minjee.persistence;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.RequiredSkillVO;

@Repository
public class RequiredSkillDAOImpl implements RequiredSkillDAO {

	private static final String NAMESPACE = "edu.hexa.minjee.RegisterMapper";
	private static final Logger logger =
			LoggerFactory.getLogger(RequiredSkillDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int insert(RequiredSkillVO vo) {
		logger.info("RequiredSkillDAO: insert()호출....");
		return sqlSession.insert(NAMESPACE + ".insert_skill", vo);
		
	}

}
