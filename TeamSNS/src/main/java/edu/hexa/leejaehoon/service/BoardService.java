package edu.hexa.leejaehoon.service;

import java.util.List;

import edu.hexa.leejaehoon.domain.BoardVO;

public interface BoardService {
	
	public abstract List<BoardVO> selectTip();
	
	public abstract int insertTip(BoardVO vo);
	
	public abstract BoardVO read(int bno);
	
}
