package edu.hexa.minjee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.ProjectDAO;
import edu.hexa.teamsns.domain.ProjectVO;


@Service
public class ProjectServiceImpl implements ProjectService {

	private static final Logger logger =
			LoggerFactory.getLogger(ProjectServiceImpl.class);
	
	@Autowired
	private ProjectDAO projectDAO;
	@Override
	public int create(ProjectVO pvo) {
		logger.info("ProjectService: create() 호출...");
		return projectDAO.insert(pvo);
		
	}

}
