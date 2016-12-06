package edu.hexa.minjee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.minjee.persistence.InfoBoardDAO;
import edu.hexa.teamsns.domain.InfoBoardVO;


@Service
public class InfoBoardServiceImpl implements InfoBoardService {
	
	
	@Autowired
	private InfoBoardDAO infoDAO;
	@Override
	public int create(InfoBoardVO vo) {
		return infoDAO.insert(vo);
	}
	@Override
	public List<InfoBoardVO> read() {
		return infoDAO.select();
	}
	@Override
	public InfoBoardVO read(int bno) {
		return infoDAO.select(bno);
	}
	@Override
	public int update(InfoBoardVO vo) {
		return infoDAO.update(vo);
	}
	@Override
	public int delete(int bno) {
		return infoDAO.delete(bno);
	}
	@Override
	public int getNumOfRecords() {
		return infoDAO.getNumOfRecords();
	}
	@Override
	public List<InfoBoardVO> read(PaginationCriteria c) {
		return infoDAO.select(c);
	}

}
