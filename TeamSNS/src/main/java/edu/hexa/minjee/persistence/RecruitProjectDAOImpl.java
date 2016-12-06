package edu.hexa.minjee.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.RecruitProjectVO;

@Repository
public class RecruitProjectDAOImpl implements RecruitProjectDAO{
	
	private static final String NAMESPACE = "edu.hexa.minjee.RegisterMapper";
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insert(RecruitProjectVO rcvo) {
		return sqlSession.insert(NAMESPACE + ".insert_recruit", rcvo);
	}

}
