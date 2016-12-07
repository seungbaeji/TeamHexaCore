package edu.hexa.leejaehoon.persistence;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.teamsns.domain.UserVO;

public interface SignUpDAO {

	public abstract int insert(UserVO vo);
	
	public abstract SignUpVO login(SignUpVO vo);
	
	
} // end interface
