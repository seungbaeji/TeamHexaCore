package edu.hexa.leejaehoon.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.leejaehoon.persistence.ProjectInfoDAOImple;

@Service
public class ProjectInfoServiceImple implements ProjectInfoService {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoServiceImple.class);
	
	@Autowired
	private ProjectInfoDAOImple dao;
	
	@Override
	public List<ProjectInfoVO> select() {
		// TODO Auto-generated method stub
		return dao.select();
	}

}
