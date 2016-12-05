package edu.hexa.leejaehoon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.leejaehoon.domain.BoardVO;
import edu.hexa.leejaehoon.service.BoardService;

@Controller
@RequestMapping(value="board")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="tipAndTech")
	public void boardList(Model model){
		
		List<BoardVO> list = boardService.selectTip();
		
		logger.info("controller list = " + list);
		model.addAttribute("tiplist", list);
		
	}
	
	@RequestMapping(value="ttRegister")
	public void tipRegister(HttpServletRequest request,Model model){
		
		
//		HttpSession session = request.getSession();
//		String loginId = (String) session.getAttribute("login_id");
//		logger.info("login id: " + loginId);
//		model.addAttribute("login_id", session);
		
		
	}
	@RequestMapping(value="ttDetail")
	public void tipDetail(int bno, @ModelAttribute("page") int page,Model model){
		BoardVO vo = boardService.read(bno);
		//asdasdasdasdasd
	}
	
	@RequestMapping(value="ttRegister",method=RequestMethod.POST)
	public String tipRegisterPOST(BoardVO vo, RedirectAttributes attr){
		
		int result = boardService.insertTip(vo);
		logger.info("controller result:" + result);
		if (result == 1) {
			attr.addFlashAttribute("insert_tt", "success");
		} else {
			attr.addFlashAttribute("insert_tt", "fail");
		}
		
		return "redirect:tipAndTech";
	}
	
} // end class
