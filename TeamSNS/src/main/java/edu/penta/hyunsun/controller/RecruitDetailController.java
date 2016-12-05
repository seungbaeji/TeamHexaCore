package edu.penta.hyunsun.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.service.RecruitDetailService;

@Controller
public class RecruitDetailController {
	private static final Logger logger = LoggerFactory.getLogger(RecruitDetailController.class);
	
	@Autowired
	private RecruitDetailService service;
	
	// /recruit_detail/detail-recruit-bno
	@RequestMapping(value="/recruit_detail/detail-recruit-bno", method=RequestMethod.GET)
	public void recruitDetailView(int rbno, Model model) {
		logger.info("상세보기 controller");
		
		RecruitDetailDTO dto = service.select(rbno);
		model.addAttribute("dto", dto);
		
	} // end detailView()
	

} // end class RecruitDetailController
