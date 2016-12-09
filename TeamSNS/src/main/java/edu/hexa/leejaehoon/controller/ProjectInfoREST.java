package edu.hexa.leejaehoon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.service.RecruitDetailService;

@RestController
@RequestMapping(value="project")
public class ProjectInfoREST {
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoREST.class);
	
	@Autowired
	private RecruitDetailService service;
	
	@RequestMapping(value="/all/{no}", method=RequestMethod.GET)
	public ResponseEntity<RecruitDetailDTO> selectProject(@PathVariable("no") Integer rbno){
		
		RecruitDetailDTO dto = service.select(rbno);
		logger.info("RESTcontoroller dto : " + dto);
		ResponseEntity<RecruitDetailDTO> entity = null;
		if (dto != null) { // select 성공
			entity = new ResponseEntity<RecruitDetailDTO>(dto, HttpStatus.OK);
			
		} else { // select 실패
			entity = new ResponseEntity<RecruitDetailDTO>(dto, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
} // end class
