package com.edu.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.edu.domain.BoardVO;
import com.edu.domain.EmployeeDTO;
import com.edu.service.BoardService;
import com.edu.service.EmployeeService;

@Controller
public class MainController {
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	
	@Inject
	BoardService boardService;
	
	@Inject
	EmployeeService employeeService;
	
	 @RequestMapping(value="/", method=RequestMethod.GET) 
	  public ModelAndView GetLogin(HttpServletRequest req, Model model)
	  throws Exception {
	  
	  System.out.println("GetLogin"); 
	  HttpSession session = req.getSession();
	  session.getAttribute("employee");
	  //EmployeeDTO loginAcc = employeeService.login(dto);
	  ModelAndView mav = new ModelAndView(); 
	  
	  if(session.getAttribute("employee") != null) {
		  System.out.println("세션 있엉.."); 
		  
		 
		  mav.addObject("employee", session.getAttribute("employee"));
		  mav.setViewName("home");
		  
	  } else { 
		  //session.setAttribute("employee", session);
		  System.out.println("세션 없엉ㅠㅠㅠ"); 
		  
		  mav.addObject("employee", null);
		  mav.setViewName("home");
		  
	  }  
	  
		/*
		 * List<BoardVO> list = null; list = boardService.list();
		 * 
		 * model.addAttribute("list", list);
		 */
	  
	  return mav; 
	  }
	  	

	  @RequestMapping(value="/", method=RequestMethod.POST) 
	  public ModelAndView postLogin(EmployeeDTO dto, HttpServletRequest req, Model model) throws  Exception {
	  
	  System.out.println("postLogin"); 
	  HttpSession session = req.getSession();
	  EmployeeDTO loginAcc = employeeService.login(dto);
	  
	  if(loginAcc == null) {
		  session.setAttribute("employee", null);
		  System.out.println("세션 없엉"); 
	  } else { 
		  session.setAttribute("employee",loginAcc); 
		  System.out.println("세션 있엉"); 
	  }
	  
	  ModelAndView mav = new ModelAndView(); 
	  mav.addObject("employee", loginAcc);
	  mav.setViewName("home"); 
	  

	  
		/*
		 * List<BoardVO> list = null; list = boardService.list();
		 * model.addAttribute("list", list);
		 */
	  
	  return mav; 
	  }
	
}
