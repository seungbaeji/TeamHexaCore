package edu.hexa.minjee.persistence;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.ProjectVO;

@Repository
public class ProjectDAOImpl implements ProjectDAO {

	private static final String NAMESPACE = "edu.hexa.minjee.RegisterMapper";
	private static final Logger logger =
			LoggerFactory.getLogger(ProjectDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(ProjectVO pvo) {
		logger.info("ProjectDAO: insert() 호출.....");
		return sqlSession.insert(NAMESPACE + ".insert_project", pvo);
	}

}
