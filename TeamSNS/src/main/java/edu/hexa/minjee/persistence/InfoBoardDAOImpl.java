package edu.hexa.minjee.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.teamsns.domain.InfoBoardVO;

@Repository
public class InfoBoardDAOImpl implements InfoBoardDAO {

	private static final Logger logger =
			LoggerFactory.getLogger(InfoBoardDAOImpl.class);
	private static final String NAMESPACE = "edu.hexa.minjee.InfoMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(InfoBoardVO vo) {
		logger.info("InfoBoard DAO: insert() 호출...");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public List<InfoBoardVO> select() {
		return sqlSession.selectList(NAMESPACE + ".selectAll");
	}

	@Override
	public InfoBoardVO select(int bno) {
		return sqlSession.selectOne(NAMESPACE + ".select", bno);
	}

	@Override
	public int update(InfoBoardVO vo) {
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(int bno) {
		return sqlSession.delete(NAMESPACE + ".delete", bno);
	}

	@Override
	public int getNumOfRecords() {
		return sqlSession.selectOne(NAMESPACE + ".totalCount");
	}

	@Override
	public List<InfoBoardVO> select(PaginationCriteria c) {
		return sqlSession.selectList(NAMESPACE + ".listPage", c);
	}

}
