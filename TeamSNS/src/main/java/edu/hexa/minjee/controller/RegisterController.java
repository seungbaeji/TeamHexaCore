package edu.hexa.minjee.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.minjee.domain.ManageProjectPartDTO;
import edu.hexa.minjee.service.ProjectRegisterService;
import edu.hexa.teamsns.domain.ManageProjectPartVO;
import edu.hexa.teamsns.domain.ProjectVO;
import edu.hexa.teamsns.domain.RecruitProjectVO;
import edu.hexa.teamsns.domain.RequiredSkillVO;
import edu.hexa.teamsns.domain.UserVO;



@Controller
@RequestMapping("/register")
public class RegisterController {
	private static final Logger logger =
			LoggerFactory.getLogger(RegisterController.class);
	
	private SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	
	@Autowired
	private ProjectRegisterService registerService;
	
	
	@RequestMapping(value = "project-register")
	public void registerGET() {
		logger.info("registerGET() 호출.... ");
	}
	
	@RequestMapping(value="project-register", method=RequestMethod.POST)
	public void registerPOST(
			ProjectVO pvo, String pstart, String pend, 
			ManageProjectPartVO mvo, ManageProjectPartDTO mdto, 
			RequiredSkillVO rvo,
			String title, String rcstart, String rcend,
			RedirectAttributes attr) throws ParseException {
		
		logger.info("registerPOST() 호출.... ");
		
		// project insert
		pvo.setStart(format.parse(pstart));
		pvo.setEnd(format.parse(pend));
		int result_project = registerService.create(pvo);
		
		
		// part insert
		String[] parts = { mdto.getPart1(), mdto.getPart2(), mdto.getPart3(), 
						mdto.getPart4(), mdto.getPart5(), mdto.getPart6() };	
		for(String part: parts) {
			if(part != null && part != "") {
				mvo = new ManageProjectPartVO(pvo.getPid(), null, part);
				int result_part = registerService.create(mvo);
			}
		}
		
		// skill insert
		rvo.setPid(pvo.getPid());
		int result_skill = registerService.create(rvo);
		
		// recruit insert
		RecruitProjectVO rcvo = new RecruitProjectVO(0, pvo.getPid(), title, 
						format.parse(rcstart), format.parse(rcend), 0, null);
		int result_recruit = registerService.create(rcvo);
//		return "redirect:project-register";
		
	}
}
