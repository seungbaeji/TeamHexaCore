package edu.hexa.minjee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.RecruitProjectDAO;
import edu.hexa.teamsns.domain.RecruitProjectVO;

@Service
public class RecruitProjectServiceImpl implements RecruitProjectService{
	
	@Autowired
	private RecruitProjectDAO dao;
	
	@Override
	public int create(RecruitProjectVO rcvo) {
		return dao.insert(rcvo);
	}

}
