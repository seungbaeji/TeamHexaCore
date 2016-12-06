package edu.hexa.minjee.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.minjee.domain.ManageProjectPartDTO;
import edu.hexa.minjee.service.ManageProjectPartService;
import edu.hexa.minjee.service.ProjectService;
import edu.hexa.minjee.service.RecruitProjectService;
import edu.hexa.minjee.service.RequiredSkillService;
import edu.hexa.minjee.service.TeamService;
import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.TeamVO;



@Controller
@RequestMapping("/register")
public class RegisterController {
	private static final Logger logger =
			LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private ProjectService projectService;
	@Autowired
	private ManageProjectPartService partService;
	@Autowired
	private RequiredSkillService skillService;
	@Autowired
	private RecruitProjectService recruitService;
	
	
	@RequestMapping(value = "project-register")
	public void registerGET() {
		logger.info("registerGET() 호출.... ");
	}
	
	@RequestMapping(value="project-register", method=RequestMethod.POST)
	public String registerPOST(String pname, String intro, String start, String end, 
			String category, String district, 
			ManageProjectPartVO mvo,
			RequiredSkillVO rvo,
			ManageProjectPartDTO mdto,
			RecruitProjectVO rcvo,
			RedirectAttributes attr ) 
						throws ParseException {
		logger.info("registerPOST() 호출.... ");
		
		// project insert
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date dstart = format.parse(start);
		Date dend = format.parse(end);
		ProjectVO pvo = new ProjectVO(pname, category, dstart, dend, intro, district, null, null);
		int result_project = projectService.create(pvo);
		logger.info("pvo.getProject_id(): " + pvo.getPid());
		logger.info("result_project: " + result_project);
		
		// part insert
		String[] parts = { mdto.getPart1(), mdto.getPart2(), mdto.getPart3(), 
						mdto.getPart4(), mdto.getPart5(), mdto.getPart6() };
			
		for(String part: parts) {
			mvo.setPid(pvo.getPid());
			if(part != null) {
				mvo.setPart(part);
				int result_part = partService.create(mvo);
				logger.info("mvo.getPart(): " + mvo.getPart());
			}
		}
		
		// skill insert
		rvo.setPid(pvo.getPid());
		int result_skill = skillService.create(rvo);
		logger.info("rvo.getSkill_1()" + rvo.getSkill_1());
		
		// recruit insert
		rcvo.setPid(pvo.getPid());
		int result_recruit = recruitService.create(rcvo);
				
		return "redirect:project-register";
		
	}
}
