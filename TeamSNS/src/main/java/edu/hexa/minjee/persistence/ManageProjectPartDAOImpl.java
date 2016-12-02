package edu.hexa.minjee.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.teamsns.domain.ManageProjectPartVO;

@Repository
public class ManageProjectPartDAOImpl implements ManageProjectPartDAO {

	private static final String NAMESPACE = "edu.hexa.minjee.RegisterMapper";
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int insert(ManageProjectPartVO vo) {
		
		return sqlSession.insert(NAMESPACE + ".insert_part", vo);
	}

}
