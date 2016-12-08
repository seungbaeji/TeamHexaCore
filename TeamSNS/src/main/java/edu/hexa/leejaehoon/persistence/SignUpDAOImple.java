package edu.hexa.leejaehoon.persistence;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.teamsns.domain.UserVO;

@Repository
public class SignUpDAOImple implements SignUpDAO {

	private static final Logger logger = LoggerFactory.getLogger(SignUpDAOImple.class);
	
	private static final String NAMESPCAE = "edu.hexa.leejaehoon.signUp";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(UserVO vo) {
		
		logger.info("DAOvo" + vo);
		return sqlSession.insert(NAMESPCAE + ".insert_user", vo);
	}

	@Override
	public SignUpVO login(SignUpVO vo) {
		logger.info("DAO login" + vo);
		return sqlSession.selectOne(NAMESPCAE + ".login", vo);
	}

}
