package com.edu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {
	// Controller로 보내기 전 처리
	// 반환이 false면 요청 안함	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@123");
		try {
			//세션값이 없을 경우
			if(request.getSession().getAttribute("employee")==null) {
				response.sendRedirect("/employee/codeCheck");
				return false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		return true;
	}
	
	  // controller의 handler가 끝나면 처리됨
	  
	  @Override public void postHandle( HttpServletRequest request,
	  HttpServletResponse response, Object obj, ModelAndView mav) throws Exception
	  { }
	  
	  // view까지 처리가 끝난 후에 처리됨
	  
	  @Override public void afterCompletion( HttpServletRequest request,
	  HttpServletResponse response, Object obj, Exception e) throws Exception { }
	 
	}

