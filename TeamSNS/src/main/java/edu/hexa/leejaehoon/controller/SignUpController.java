package edu.hexa.leejaehoon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.leejaehoon.domain.SignUpVO;
import edu.hexa.leejaehoon.service.SignUpService;

@Controller
@RequestMapping(value="signup")
public class SignUpController {

	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	
	@Autowired
	private SignUpService signUpService;
	
	@RequestMapping(value="main-page", method=RequestMethod.GET)
	public void mainTest(){	
		logger.info("컨트롤러");
	}
	
	@RequestMapping(value="main-page", method=RequestMethod.POST)
	public String signUp(SignUpVO vo, RedirectAttributes attr){
		int result = signUpService.create(vo);
		
		if (result == 1) {
			attr.addFlashAttribute("insert_result", "success");
		} else {
			attr.addFlashAttribute("insert_result", "fail");
		}
		logger.info(" controller result = " + result);
		return "redirect:main-page";
	}
	
	
	
} // end SignUpController
