package edu.hexa.minjee.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hexa.minjee.persistence.ManageProjectPartDAO;
import edu.hexa.teamsns.domain.ManageProjectPartVO;

@Service
public class ManageProjectPartServiceImpl implements ManageProjectPartService {

	private static final Logger logger =
			LoggerFactory.getLogger(ManageProjectPartServiceImpl.class);
	
	@Autowired
	private ManageProjectPartDAO partDAO;
	
	@Override
	public int create(ManageProjectPartVO vo) {
		logger.info("ManageProjectPartService: create() 호출....");
		return partDAO.insert(vo);
	}

}
