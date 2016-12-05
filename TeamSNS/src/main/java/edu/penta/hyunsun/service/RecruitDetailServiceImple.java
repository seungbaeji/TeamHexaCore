package edu.penta.hyunsun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.persistence.RecruiteDetailDAO;

@Service
public class RecruitDetailServiceImple implements RecruitDetailService {

	@Autowired
	private RecruiteDetailDAO dao;
	
	@Override
	public RecruitDetailDTO select(int rbno) {
		return dao.select(rbno);
	}

}
