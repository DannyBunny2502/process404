package com.edu.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.crypto.Mac;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.edu.domain.BoardVO;
import com.edu.domain.EmployeeDTO;
import com.edu.service.EmployeeService;

@Controller
@RequestMapping("/employee/")
public class EmpController {
	
	private static final Logger logger =
			LoggerFactory.getLogger(MainController.class);
	
	//@Inject
	@Autowired
	EmployeeService service;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Resource(name="emp_img")
	// String employees_img_path = "c:/document/upload"로 직접 정해도 된다.
	String uploadPath; //공통사용

	
	

	 @RequestMapping(value = "/join", method = RequestMethod.GET) 
	  public void getJoin(@RequestParam("emp_code") String emp_code, Model model) throws  Exception { 
		  
		  System.out.println("getJoin");
		  
		  EmployeeDTO join = null; 
		  join = service.join(emp_code);
	  
		  model.addAttribute("join", join); 
	  
	  }
	 

	// 게시물 수정
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String postJoin(EmployeeDTO dto, MultipartFile file, ModelAndView mav) throws Exception {
		System.out.println("post");
		
		String fileName=file.getOriginalFilename();
		fileName=uploadFile(fileName,file.getBytes());
		
		dto.setImg_root(fileName);
		service.infoUpdate(dto);
		
		return "redirect:/";
	}
	
		String uploadFile (String originalName, byte[] fileData) throws Exception {
		
		// Universal Unique Identifier : 범용고유식별자 랜덤발생
		UUID uid= UUID.randomUUID();
		String savedName = uid.toString()+"_"+originalName;
		
		// new File (디렉토리, 파일이름)
		File target = new File (uploadPath, savedName); 
		
		// 첨부파일을 임시디렉토리에서 우리가 지정한 디렉토리로 복사한다.
		FileCopyUtils.copy(fileData, target);
		
		return savedName; // 복사한 파일ㅇ 이름을 되돌려준다
	}
		  
	// 사원코드 확인 후 회원정보 수정 할 페이지로 넘김
	 @RequestMapping(value = "/codeCheck", method = RequestMethod.GET) 
	 public void getCode() throws  Exception { 
		 System.out.println("codeCheck get");
	  }
	 
	 @RequestMapping(value = "/codeCheck", method = RequestMethod.POST) 
	 public String postCode(@RequestParam("emp_code") String emp_code, Model model, HttpServletRequest request) throws  Exception { 
		 
		 emp_code = request.getParameter("emp_code"); 
		 System.out.println("codeCheck post"+emp_code);
		 
		EmployeeDTO join = null; // 사원코드 값 담을 empty 변수
		join = service.join(emp_code); // 사원코드 담아서 join 화면으로 넘기
		
		service.join(emp_code); // 사원코드 담아서 join 화면으로 넘기
		model.addAttribute("join", join); //$값
		  
		return "redirect:/Employee/join";
	  }
	
	 @RequestMapping(value="/logout")
	 public String logout (HttpServletRequest request) throws Exception {
		 request.getSession().invalidate();
	
		 
		 ModelAndView mav = new ModelAndView("home");
		 return "redirect:/";
	 }
}
