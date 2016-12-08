package edu.hexa.seungbae.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.persistence.ProjectCardDAO;

@Service
public class ProjectCardServiceImpl implements ProjectCardService{
	private Logger logger = LoggerFactory.getLogger(ProjectCardServiceImpl.class);
	
	@Autowired
	private ProjectCardDAO dao;
	
	
	@Override
	public int create() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProjectCardDTO> read() {
		return dao.select();
	}
	
	@Override
	public List<ProjectCardDTO> read(String[] districts) {
		logger.info("ProjectCardService: 지역검색 실행, 갯수: " + districts.length);
		return dao.select(districts);
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

}
