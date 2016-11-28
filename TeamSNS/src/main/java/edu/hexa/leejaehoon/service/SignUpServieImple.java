package edu.hexa.leejaehoon.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.leejaehoon.persistence.SignUpDAO;

@Service
public class SignUpServieImple implements SignUpService {

	private static final Logger logger = LoggerFactory.getLogger(SignUpServieImple.class);
	
	@Autowired
	private SignUpDAO signUpDAO;
	
	
	@Override
	public int create(SignUpVO vo) {
		
		logger.info("service = " + vo);
		return signUpDAO.insert(vo);
	}

}
