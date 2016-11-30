package edu.hexa.leejaehoon.persistence;



import edu.hexa.leejaehoon.domain.SignUpVO;

public interface SignUpDAO {

	public abstract int insert(SignUpVO vo);
	
	public abstract SignUpVO login(SignUpVO vo);
	
	
} // end interface
