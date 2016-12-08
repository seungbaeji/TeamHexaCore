package edu.hexa.leejaehoon.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
//		return "main-page";
	}
	
	@RequestMapping(value="main-login", method=RequestMethod.GET)
	public void mainTest2(){	
		logger.info("로그인완료 화면 호출");

	}
	
	@RequestMapping(value="main-page", method=RequestMethod.POST)
	public void signUp(SignUpVO vo, RedirectAttributes attr){
		int result = signUpService.create(vo);
		
		if (result == 1) {
			attr.addFlashAttribute("insert_result", "success");
		} else {
			attr.addFlashAttribute("insert_result", "fail");
		}
		logger.info(" controller result = " + result);
		/*return "redirect:main-page";*/
	}
	
	@RequestMapping(value = "login", method=RequestMethod.POST)
	public void login(SignUpVO vo, RedirectAttributes attr, Model model, HttpServletRequest request,String query){
		logger.info("main_login 호출");
		logger.info("Id" + vo.uid);
		logger.info("pw" + vo.pw);

		SignUpVO result = signUpService.login(vo);
		model.addAttribute("login_id", result);
		logger.info(" login controller result = " + result);
		
		
		
		// login-post 요청을 보낸 주소를 저장
		logger.info("query: " + query);
		if (query != null && !query.equals("null")) {
			// 요청 파라미터 query에 값이 들어 있는 경우
			/*String[] attr1 = query.split("."); 
			String dest = attr1[1];*/
			String dest = query.substring(4);	
			logger.info("dest 정보: " + dest);
			request.getSession().setAttribute("dest", dest);
		}

		/* return "redirect:/signup/main-login"; */
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest req){
		
		HttpSession session = req.getSession();
		session.removeAttribute("login_id");
		session.invalidate();
		
		
		return "redirect:/signup/main-page";
	}
	
	
	
	@RequestMapping(value="includeTest")
	public void Test(){
		
	}
	
	
	
	
	
	
} // end SignUpController
