package edu.penta.hyunsun.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.teamsns.domain.UserVO;
import edu.penta.hyunsun.service.MypageService;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageService service;
	
	// 마이페이지 목록
	@RequestMapping(value="/user/mypage-list")
	public void mypageList(String uid, Model model) {
		logger.info("마이페이지 리스트");
		uid = "hs_hshs";
		model.addAttribute("uid", uid);
		
	}
	
	// 내 정보 보기 
	@RequestMapping(value = "/user/mypage", method = RequestMethod.GET)
	public void mypageView(String uid, Model model) {
		logger.info("마이페이지 : uid = " + uid);
		
		UserVO vo = service.user_mypage(uid);
		model.addAttribute("user", vo);
		
	} // end mypageView
	
	// 내 정보 수정 
	@RequestMapping(value = "/user/update", method = RequestMethod.POST)
	public String userUpdate(UserVO vo, RedirectAttributes attr) {
		logger.info("userUPdate 컨트롤러");
		int result = service.user_update(vo);
		logger.info("정보 수정: "+result);
		if(result==1) {
			attr.addFlashAttribute("update_result", "success");
		} else { 
			attr.addFlashAttribute("update_result", "fail");
		}
		attr.addFlashAttribute("uid", vo.getUid());
		return "redirect:/user/mypage-list";
	}
	
	// TODO: 회원 탈퇴
	@RequestMapping(value="/user/delete")
	public String userDelete(String uid) {
		
		return "/";
	}
	
	public void myBoardList(String uid, Model model) {
		logger.info("내가 쓴 글 리스트");
	}
	
	

} // end class MypageController
