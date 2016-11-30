package edu.hexa.leejaehoon.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		logger.info("메인페이지 호출");
	}
	
	@RequestMapping(value="main-login", method=RequestMethod.GET)
	public void mainTest2(){	
		logger.info("로그인완료 화면 호출");
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
	
	@RequestMapping(value = "login", method=RequestMethod.POST)
	public String login(SignUpVO vo, RedirectAttributes attr, Model model, HttpServletRequest request){
		logger.info("main_login 호출");
		logger.info("Id" + vo.user_id);
		logger.info("pw" + vo.user_pw);
		
		SignUpVO result = signUpService.login(vo);
		//model.addAttribute("user_id", result);
		
		
		if(result != null){
			logger.info("login 성공");
			request.getSession().setAttribute("login_result", "success");
			request.getSession().setAttribute("longin_user", result);
//			attr.addFlashAttribute("login_result", "success");
//			attr.addFlashAttribute("longin_user_id", result.getUser_id());
		}else{
//			attr.addAttribute("login_result", "fail");
			request.getSession().setAttribute("login_result", "fail");
		}
		
		return "redirect:/signup/main-login";
	}
	
	
} // end SignUpController
