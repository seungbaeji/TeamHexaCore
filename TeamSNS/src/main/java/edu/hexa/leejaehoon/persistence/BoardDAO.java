package edu.hexa.leejaehoon.persistence;

import java.util.List;

import edu.hexa.leejaehoon.domain.BoardVO;

public interface BoardDAO {

	public abstract List<BoardVO> select();
	
} // end interface
