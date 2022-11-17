package com.javassem.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.MemberVO;
import com.javassem.service.MemberService;

@Controller
public class MemberController {
	
	
	  @Autowired 
	  private MemberService memberService;
	
	/*1117 요청 insertJoin.do 들어옴
	 고객의 입력값들을 받고 디비를타서 들어가야합니다!
	 * */
	@RequestMapping("insertJoin.do")
	public ModelAndView insertJoin(MemberVO memberVO) {
		System.out.println(memberVO); //확인용 확인성공!
		int result = memberService.userInsert(memberVO);
		String message = "가입에 실패하셨습니다.";
		if(result == 1) {
			message = memberVO.getM_Name()+ "님 VINTEGER 가입을 환영합니다.";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("join_ok"); //회원가입 성공 페이지로 이동!
		mv.addObject("message", message);
		return mv;
	}// end of insertJoin
	
	
	
	
	//로그인시 세션에 아이디 저장함
	@RequestMapping("loginMember.do")
	public String login(MemberVO memberVO, HttpSession session) {
		MemberVO result = memberService.idCheck_Login(memberVO);
		
		if(result==null || result.getM_Id() == null) {
			return "login"; //로그인버튼 누르면 세션저장까지는 되는데 메인화면으로 안돌아감 ㅠㅠㅠㅠㅠ
		}else {
			//로그인 성공경우 세션에 저장 중요!!!!
			session.setAttribute("login", memberVO.getM_Id());
			return "login";
		
		}
	}
	
	
	
	//아이디 중복체크
	//일반요청함수에서 스트링 리턴 은 : 뷰페이지 지정
			//여기는 뷰페이지 지정안하지 ajax는 화면이 고정이니까 뷰페이즈를 바꾸면 안되지,,
			//근데 여기는 리턴값이 있다보니 화면바꾸기라는 뜻
			//이 요청이 Ajax 통신에 의해 값을 전송을 해줘야 한다
			//	@ResponseBody 이거를 해줘야 한다
		@RequestMapping(value="idCheck.do",produces="application/text;charset=utf-8")
		@ResponseBody
		public String checkId(MemberVO memberVO) {
			
			//System.out.println("idCheck.od 요청" + memberVO.getUserId());
			
			MemberVO result = memberService.idCheck_Login(memberVO);
			String message = "사용가능아이디입니다";
			if(result != null) message = "중복된 아이디가 있습니당";
			
			//System.out.println("message :" + message);
			return message;
		}
		
}
