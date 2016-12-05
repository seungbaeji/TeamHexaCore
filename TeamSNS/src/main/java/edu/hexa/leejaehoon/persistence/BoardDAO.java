package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.BoardVO;

public interface BoardDAO {

	public abstract List<BoardVO> select();
	
	public abstract int insert(BoardVO vo);
	
	public abstract BoardVO select(int bno);
} // end interface
