package edu.hexa.minjee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.RequiredSkillDAO;
import edu.hexa.teamsns.domain.RequiredSkillVO;

@Service
public class RequiredSkillServiceImpl implements RequiredSkillService {

	private static final Logger logger =
			LoggerFactory.getLogger(RequiredSkillServiceImpl.class);
	
	@Autowired
	private RequiredSkillDAO skillDAO;
	@Override
	public int create(RequiredSkillVO vo) {
		logger.info("RequiredSkillDAO: create() 호출....");
		return skillDAO.insert(vo);
	}

}
