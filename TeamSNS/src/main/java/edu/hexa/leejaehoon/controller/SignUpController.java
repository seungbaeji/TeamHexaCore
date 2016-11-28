package edu.hexa.leejaehoon.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
} // end SignUpController
