package edu.hexa.leejaehoon.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
} // end class
