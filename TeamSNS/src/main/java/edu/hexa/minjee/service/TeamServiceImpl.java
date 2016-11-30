package edu.hexa.minjee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.TeamDAO;
import edu.hexa.teamsns.domain.TeamVO;

@Service
public class TeamServiceImpl implements TeamService {

	private static final Logger logger =
			LoggerFactory.getLogger(TeamServiceImpl.class);
	@Autowired
	private TeamDAO teamDAO;
	
	@Override
	public int create(TeamVO tvo) {
		logger.info("TeamService: create() 호출...");
		return teamDAO.insert(tvo);
	}

}
