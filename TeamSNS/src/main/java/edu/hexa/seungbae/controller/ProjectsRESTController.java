package edu.hexa.seungbae.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.hexa.seungbae.domain.ProjectCardDTO;
import edu.hexa.seungbae.service.ProjectCardService;

@RestController
@RequestMapping(value="projects")
public class ProjectsRESTController {
	private static final Logger logger = LoggerFactory.getLogger(ProjectsRESTController.class);
	
	@Autowired
	private ProjectCardService service;
	
	
	@RequestMapping(value="{districtList}", method=RequestMethod.GET)
	public ResponseEntity<List<ProjectCardDTO>> readProjects (@PathVariable("districtList") String[] districtList){
		logger.info("readProjectsByDistricts" + districtList);
		List<ProjectCardDTO> list = service.read(districtList);
		
		ResponseEntity<List<ProjectCardDTO>> entity = null;
		
		if (list != null) {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.OK);
		}else {
			entity = new ResponseEntity<List<ProjectCardDTO>>(list, HttpStatus.BAD_REQUEST);
		}		
		return entity;
	}
	
	
	

}
