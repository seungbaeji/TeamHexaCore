package edu.hexa.leejaehoon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.hexa.leejaehoon.domain.ProjectInfoVO;

import edu.hexa.leejaehoon.service.ProjectInfoService;

@Controller
@RequestMapping(value="project")
public class ProjectInfoController {
	private static final Logger logger = LoggerFactory.getLogger(ProjectInfoController.class);
	
	@Autowired
	private ProjectInfoService projectInfoService;
	
	@RequestMapping(value="projectInfo")
	public void projectinfo(String uid,Model model, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		 uid = (String)session.getAttribute("login_id");
		
		List<ProjectInfoVO> list = projectInfoService.select(uid);
		
		logger.info("프로젝트 리스트 :" + list);
		
		model.addAttribute("projectList",list);
	}
	
	
	
	
} // end class
