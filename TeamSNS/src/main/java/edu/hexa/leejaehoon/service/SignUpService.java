package edu.hexa.leejaehoon.service;

import edu.hexa.leejaehoon.domain.SignUpVO;

public interface SignUpService {

	public abstract int create(SignUpVO vo);
	
	public abstract SignUpVO login(SignUpVO vo);
	
	
} // end interface
