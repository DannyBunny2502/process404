package com.edu.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	
	/*
	 * @RequestMapping(value="/login.do",method=RequestMethod.GET) public
	 * ModelAndView loginView(ModelAndView mav) {
	 * System.out.println("Controller.loginView() 호출");
	 * mav.setViewName("user/login"); return mav; }
	 */
    
    /**************
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public UserDTO login(UserDTO udto) throws Exception {
		UserDAO dao;

		UserDTO	dto 	= dao.getUser(udto);
		String	pw 		= dto.getPw();
		logger.info("암호화 비밀번호"+pw);
		
		String	rawPw 	= dto.getPwConfirm();
		logger.info("비밀번호"+rawPw);
		if(passwordEncoder.matches(rawPw, pw)) {
			logger.info("비밀번호 일치");
			dto.setPw(pw);
		}else {
			logger.info("비밀번호 불일치");    
		} 
		
		return dao.login(dto);
		//return dao.login(dto);
	}
    **********/
    

    /*
     * 
    public MemberVO login(LoginDTO dto) throws Exception {
        System.out.println("service dto: "+dto);
        System.out.println("멤버서비스 dto");
        try {
            String pw = dao.getUserPw(dto.getMemberEmail()).getMemberPassword();
            String rawPw = dto.getMemberPassword();
            //System.out.println("db pW  : "+pw);
            //System.out.println("입력Pw:"+rawPw);
            //System.out.println(passwordEncoder.matches(rawPw, pw));
            if(passwordEncoder.matches(rawPw, pw)) {
                System.out.println("비밀번호 일치");
                dto.setMemberPassword(pw);
            }else {
                //============System.out.println("비밀번호 불일치");=======================
                //주석 해제 시 비 암호화 설정된 db Pw  값으로  로그인 되지 않음
                dto.setMemberPassword(pw);
            }
        }catch(NullPointerException npe){
            MemberVO vo=new MemberVO();
            vo=null;
            System.out.println(vo);
            return vo;
        }catch (Exception e){
            MemberVO vo=new MemberVO();
            vo=null;
            return vo;
        }
        return dao.login(dto);
    }     * 
     */
    /* 시큐리티 적용전 메소드
    @RequestMapping(value="/login.do",method=RequestMethod.GET)
    public ModelAndView loginView(ModelAndView mav) {
        System.out.println("Controller.loginView() 호출");
        mav.setViewName("user/login");
        return mav;
    }
    */
    /*
    @RequestMapping(value = "/insertUser.do", method = { RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody int idCheck(UserDTO user, Model model) {
        return 0;
        //return UserService.checkId(user);
    	//return com.kboard.user.UserService.checkId(user);
	}
	*/
    
    
	/*
	 * @RequestMapping(value="/insertUser.do",method=RequestMethod.GET) public
	 * ModelAndView insertUserView(ModelAndView mav) {
	 * logger.info("insertUser.do GET called.....");
	 * System.out.println("Controller.insertUserView() GET 호출");
	 * mav.setViewName("user/insertUser"); return mav; }
	 * 
	 * @RequestMapping(value="/insertUser.do",method=RequestMethod.POST) public
	 * ModelAndView insertUser(AccountDTO udto, ModelAndView mav) throws Exception {
	 * logger.info("insertUser.do POST called.....");
	 * System.out.println("Controller.insertUser() POST 호출");
	 * userService.insertUser(udto); mav.setViewName("user/login"); return mav; }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/checkId.do") public int idCheck(AccountDTO udto,
	 * ModelAndView mav) { System.out.println("Controller.idCheck() 호출"); int result
	 * = 0;
	 * 
	 * AccountDTO user = userService.getUser(udto);
	 * 
	 * logger.info("checkId.do called....."); logger.info("user[" + user + "]");
	 * 
	 * 
	 * if(user != null) result = 1; else System.out.println("사용가능한 아이디입니다."); return
	 * result; }
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/checkNickName.do") public int
	 * nickNameCheck(AccountDTO udto, ModelAndView mav) {
	 * System.out.println("Controller.nickNameCheck() 호출"); int result = 0;
	 * AccountDTO user = userService.getNickNameUser(udto); if(user != null) result
	 * = 1; else System.out.println("사용가능한 닉네임입니다."); return result; }
	 */
    

		
	/*
	 * // code.jsp 호출
	 * 
	 * @RequestMapping(value="/code", method=RequestMethod.GET) public void
	 * getCode() throws Exception{ System.out.println("getCode()"); }
	 * 
	 * // code.jsp 호출 -> code 메소드 호출 (code값 확인) -> join 페이지 호출
	 * 
	 * @RequestMapping(value="/code", method = RequestMethod.POST) public String
	 * postCode() throws Exception{ System.out.println("postCode()");
	 * 
	 * service.code(vo);
	 * 
	 * return "redirect:/Employee/join"; }
	 */

	 @RequestMapping(value = "/join", method = RequestMethod.GET) 
	  public void getJoin(@RequestParam("emp_code") String emp_code, Model model) throws  Exception { 
		  
		  System.out.println("getJoin");
		  
		  EmployeeDTO join = null; 
		  join = service.join(emp_code);
	  
		  model.addAttribute("join", join); 
	  
	  }
	 

	// 게시물 수정
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String postUpdate(EmployeeDTO dto) throws Exception {
		System.out.println("post");

		service.infoUpdate(dto);
		
		
		
		return "redirect:/";
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
	
}
