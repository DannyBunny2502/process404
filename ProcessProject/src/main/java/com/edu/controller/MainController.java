package com.edu.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	
	//시작 페이지로 이동
	@RequestMapping("/") // url pattern mapping
	public String main(Model model) {
		// Model : 데이터를 담는 그릇 역할, map 구조로 저장된다.
		// model.addAttribute("변수명", 값)
		model.addAttribute("message", "안녕 힘내.");
		// <beans:property name="prefix" value="/WEB-INF/views/" />
		// <beans:property name="suffix" value=".jsp" />
		// /WEB-INF/views/main.jsp
		// prefix와 suffix는 servlet-context.xml에 정의되어 있다.
		return "main"; // main.jsp로 포워딩된다.
	}
	
	
}
