package edu.hexa.seungbae.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.seungbae.domain.TeamCardDTO;

@Repository
public class TeamCardDAOImpl implements TeamCardDAO{
	
	private static final String NAMESPACE = "edu.penta.seungbae.teamcard";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insert(TeamCardDTO vo) {
		// TODO:
		return 0;
	}

	@Override
	public List<TeamCardDTO> select() {
		return sqlSession.selectList(NAMESPACE +".selectAll");
	}

	@Override
	public TeamCardDTO select(int teamId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(TeamCardDTO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int teamId) {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
