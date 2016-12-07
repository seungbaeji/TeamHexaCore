package edu.hexa.seungbae.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.seungbae.domain.ProjectCardDTO;

@Repository
public class ProjectCardDAOImpl implements ProjectCardDAO{
	
	private static final String NAMESPACE = "edu.penta.seungbae.proejctcard";
	private Logger logger = LoggerFactory.getLogger(ProjectCardDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public List<ProjectCardDTO> select() {
		return sqlSession.selectList(NAMESPACE +".selectAll");
	}


	@Override
	public List<ProjectCardDTO> select(String[] districts) {
		logger.info("ProjectCardDAO: 지역검색 실행");
		return sqlSession.selectList(NAMESPACE + ".selectByDistricts");
	}


	@Override
	public ProjectCardDTO select(int pId) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int update(ProjectCardDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int delete(int pId) {
		// TODO Auto-generated method stub
		return 0;
	}


	

}
