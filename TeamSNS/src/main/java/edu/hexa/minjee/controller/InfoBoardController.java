package edu.hexa.minjee.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.hexa.leejaehoon.pageutill.PageMaker;
import edu.hexa.leejaehoon.pageutill.PaginationCriteria;
import edu.hexa.minjee.service.InfoBoardService;
import edu.hexa.teamsns.domain.InfoBoardVO;

@Controller
@RequestMapping(value="/info_board")
public class InfoBoardController {
	private static final Logger logger =
			LoggerFactory.getLogger(InfoBoardController.class);
	private SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	
	@Autowired
	private InfoBoardService infoService;
	
	@RequestMapping(value="edu", method=RequestMethod.GET)
	public void eduList(Integer page, Model model) {
		PaginationCriteria c = new PaginationCriteria();
		
		// page 세팅 
		if(page == null) {
			page = 1;
		} else if (page != null) {
			c.setPage(page);
		}
		
		logger.info("listPage(): page = " + page);
		
		// 해당 페이지에 보여줄 list만 검색
		List<InfoBoardVO> list = infoService.read(c);
		model.addAttribute("infoVO", list);
		
		// 링크 어떻게 표현할 건지
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(infoService.getNumOfRecords());
		maker.setPageData();
		model.addAttribute("pageMaker", maker);
	}
	
	@RequestMapping(value="edu", method=RequestMethod.POST)
	public String registerEduPOST(InfoBoardVO ivo,
			String istart, String iend,
			RedirectAttributes attr) throws ParseException {
		
		ivo.setStart(format.parse(istart));
		ivo.setEnd(format.parse(iend));
		int result_insert = infoService.create(ivo);
		
		if(result_insert == 1) {
			attr.addAttribute("insert_result", "success");
		} else {
			attr.addAttribute("insert_result", "fail");
		}
		return "redirect:edu";
	}
	
	
	@RequestMapping(value="mentor")
	public void registerMentorGET() {
		
	}
	@RequestMapping(value="event")
	public void registerEventGET() {
		
	}
	

}
