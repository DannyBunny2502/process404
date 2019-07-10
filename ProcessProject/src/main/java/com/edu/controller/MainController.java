package com.edu.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edu.domain.BoardVO;
import com.edu.service.BoardService;

@Controller
public class MainController {
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	
	@Inject
	BoardService service;
	
	//시작 페이지로 이동
	@RequestMapping("/") // url pattern mapping
	public String main(Model model) throws Exception {
		// Model : 데이터를 담는 그릇 역할, map 구조로 저장된다.
		// model.addAttribute("변수명", 값)
		
		
		List<BoardVO> list = null;
		list = service.list();

		model.addAttribute("list", list);
		
		return "home"; // main.jsp로 포워딩된다.
	}
	
	
}
