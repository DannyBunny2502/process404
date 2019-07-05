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
		model.addAttribute("message", "홈페이지 방문을 환영합니다.");
		// <beans:property name="prefix" value="/WEB-INF/views/" />
		// <beans:property name="suffix" value=".jsp" />
		// /WEB-INF/views/main.jsp
		// prefix와 suffix는 servlet-context.xml에 정의되어 있다.
		return "main"; // main.jsp로 포워딩된다.
	}
	
	//@RequestMapping("gugu.do") : GET, POST방식 상관없음
	@RequestMapping(value="gugu.do", method=RequestMethod.GET)
	public String gugu(Model model) {
	//
	//public String gugu(HttpServletRequest request, Model model) {
	//public String gugu(int dan, Model model) {
	//public String gugu(@RequestParam(defaultValue = "3") int dan, Model model) {
		
		//spring에서는 get에서 아래와 같은 방식으로 사용하지 않는다.
		//int dan = Integer.parseInt(request.getParameter("dan"));

		//<a href="${path}/gugu.do?dan=8">구구단</a>
		//public String gugu(HttpServletRequest request, Model model) 을 사용하지 않고
		//public String gugu(int dan, Model model) 을 사용한다.
		//값을 넘겨주는 페이지에서 String으로 넘어오지만
		//Spring에서는 정수형으로 잘 받는다.(이러한 과정이 스프링에 잘 녹아있는 것이다.

		//public String gugu(Model model, int dan) 로 사용해도 괜찮다.
		//변수명만 맞으면 매개변수의 위치는 상관없다.

		//public String gugu(@RequestParam int dan, Model model)
		//실은 @RequestParam 이 숨어있는 것이다. 적지 않아도 된다.

		int dan = 7;
		String result = "";
		for(int i = 1; i <= 9; i++) {
			result += dan + "x" + i + " = " + dan*i + "<br>";
		}
		model.addAttribute("result", result);
		return "test/gugu";
	}
	
	//리턴 타입이 void인 경우 RequestMapping과 동일한 페이지로 넘어간다.
	//호출하는 프로그램에는 test.do로 정의되어 있다. <a href="${path}/test.do">테스트</a>
	//url 이름과 프로그램 이름이 똑같으면 void로 만들 수 있다.
	@RequestMapping("test")
	public void test() {
		
	}
	
	// url pattern과 메소드 이름은 달라도 상관 없다.
	@RequestMapping("test/doA") // url pattern
	public String doB(Model model) {
		logger.info("doB called....."); // 로그 출력
		// model.addAttribute(key, value)
		model.addAttribute("message", "홈페이지 방문을 환영합니다!!!");
		// 리턴타입이 void이면 method가 종료된 후 doA.jsp로 포워드 된다.
		return "test/doB"; // doB.jsp로 포워딩된다.
		// 넘어가는 페이지도 url pattern과 꼭 이름을 같게할 필요는 없다.
	}

	/*
	@RequestMapping(value = "/idDuplChk.do" , method = RequestMethod.POST)
	public @ResponseBody String idDuplChk(@ModelAttribute("vo") UserVO vo , Model model) throws Exception{
	    int result = joinService.idDuplChk(vo.getId());
	    return String.valueOf(result);
	}
	*/
	/*
	@RequestMapping("checkUser")
	public String checkUser() {
		return "user/checkUser";
	}
	*/
	
	
	
	
}
