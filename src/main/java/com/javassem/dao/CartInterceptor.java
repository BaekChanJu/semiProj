package com.javassem.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.javassem.domain.MemberVO;

public class CartInterceptor implements HandlerInterceptor {

	
	//  로그인 시 sesseion "member"라는 키로 로그인 사용자 정보 데이터를 저장
	//  session의 "member"를 불러들여서 데이터 있는지 없는지를 통해 로그인 여부를 판단
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
HttpSession session = request.getSession();
		
		MemberVO vo = (MemberVO)session.getAttribute("member");
		
		if(vo == null) {
			response.sendRedirect("/main");
			return false;
		} else {
			return true;
		}
	}

}
