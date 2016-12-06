package edu.hexa.seungbae.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.persistence.ProjectCardDAO;

@Service
public class ProjectCardServiceImpl implements ProjectCardService{
	
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
	public List<ProjectCardDTO> read(String district) {
		return dao.select(district);
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
