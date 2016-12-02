package edu.hexa.leejaehoon.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hexa.leejaehoon.domain.ProjectInfoVO;
import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.leejaehoon.service.ProjectInfoService;

@Controller
@RequestMapping(value="project")
public class ProjectInfoController {
	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoController.class);
	
	@Autowired
	private ProjectInfoService projectInfoService;
	
	@RequestMapping(value="projectInfo")
	public void projectinfo(Model model){
		
		List<ProjectInfoVO> list = projectInfoService.select();
		
		logger.info("프로젝트 리스트 :" + list);
		
		model.addAttribute("projectList",list);
	}
	
	
	
	
} // end class
