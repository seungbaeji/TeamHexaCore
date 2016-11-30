package edu.hexa.minjee.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.minjee.service.ProjectService;
import edu.hexa.minjee.service.TeamService;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.TeamVO;



@Controller
@RequestMapping("/register")
public class RegisterController {
	private static final Logger logger =
			LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private TeamService teamService;
	@Autowired
	private ProjectService projectService;
	
	@RequestMapping(value = "register")
	public void registerGET() {
		logger.info("registerGET() 호출.... ");
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String registerPOST(TeamVO tvo, 
				String project_start, String project_end, RedirectAttributes attr ) 
						throws ParseException {
		logger.info("registerPOST() 호출.... ");
		int result_team = teamService.create(tvo);
		logger.info("tvo.getTeam_id(): " + tvo.getTeam_id());
		
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		ProjectVO pvo = new ProjectVO();
		pvo.setTeam_id(tvo.getTeam_id());
		pvo.setproject_start(format.parse(project_start));
		pvo.setProject_end(format.parse(project_end));
		
		int result_project = projectService.create(pvo);
		
		logger.info("pvo.getProject_id(): " + pvo.getProject_id());
		if(result_team == 1 && result_project == 1) {
			attr.addAttribute("insert_result", "success");
		} else {
			attr.addAttribute("insert_result", "fail");
		}
		
		return "redirect:home";
		
	}
}
