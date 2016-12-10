package edu.penta.hyunsun.controller;

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

import edu.penta.hyunsun.domain.ApplyProjectVO;
import edu.penta.hyunsun.domain.RecruitDetailDTO;
import edu.penta.hyunsun.service.RecruitDetailService;

@Controller
public class RecruitDetailController {
	private static final Logger logger = LoggerFactory.getLogger(RecruitDetailController.class);
	
	@Autowired
	private RecruitDetailService service;
	
	// /recruit_detail/detail-recruit-bno
	@RequestMapping(value="/project/projectDetail", method=RequestMethod.GET)
	public void recruitDetailView(int rbno, String user_id, Model model, HttpServletRequest request) {
		logger.info("상세보기 controller");
		
		RecruitDetailDTO dto = service.select(rbno);
		model.addAttribute("dto", dto);
		
		HttpSession session = request.getSession();
		user_id = (String)session.getAttribute("login_id");
		model.addAttribute("user_id", user_id);
		logger.info("user_id : " + user_id);
		
		
	} // end detailView()
	
	@RequestMapping(value="/project/apply-project", method=RequestMethod.POST)
	public String applyProject(ApplyProjectVO vo, int rbno, RedirectAttributes attr) {
		int result = service.create(vo);
		if(result == 1) {
			attr.addFlashAttribute("apply_project", "success");
		} else {
			attr.addFlashAttribute("apply_project", "fail");
		}
		
		return "redirect:/project/projectDetail?rbno="+rbno;
	}
	

} // end class RecruitDetailController
