package com.javassem.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javassem.domain.CartVO;
import com.javassem.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@PostMapping("cart.do")
	@ResponseBody
	public String addCart(@ModelAttribute CartVO cart, HttpSession session) {
		
		System.out.println("addCart 확인 22222 "+cart);
		// 로그인 체크
		//HttpSession session = request.getSession();
		
		Object obj = session.getAttribute("login");
		

		if( obj == null) {
			System.out.println("obj == null");
			return "5";
		}
		
		// 장바구니 기존 상품 있는지 여부 확인
		int count = cartService.countCart(cart.getG_Id(), cart.getM_Id());
		System.out.println("g확인 : " +cart.getG_Id() +"m확인 : cart.getM_Id() :" +cart.getM_Id());
		if(count == 0) {
			// 있으면 카트 등록
			cartService.addCart(cart);
		} else{
			// 있으면 업데이트
			
			cartService.updateCart(cart);
			System.out.println(cart);
		}
		return "redirect:cart.do";
		
		

	}
	
	// 목록보기
	@GetMapping("cart.do")
	public String getCartList( String m_Id,  String cater, Model model) {
		System.out.println("m_id 확인"+ m_Id);
		model.addAttribute("cartList", cartService.getCartList(m_Id));
		System.out.println("확인 : " + cartService.getCartList(m_Id));
		if(cater==null) {
			
			return "cart";
			}else {
				return "myPage";
			}
		
	}
	
	// 카트 상품 삭제
	@RequestMapping("deleteCart.do")
	public String deleteCart(String c_Id, String m_Id) {
		System.out.println("delete : " + c_Id);
		cartService.deleteCart(c_Id);
		return "redirect:cart.do?m_Id="+m_Id;
	}
	
	// 카트 상품 전체 삭제
		@RequestMapping("deleteAllCart.do")
		public String deleteAllCart(String m_Id) {
			System.out.println("delete : " + m_Id);
			cartService.deleteAllCart(m_Id);
			return "redirect:cart.do?m_Id="+m_Id;
		}
	

	/* 카트 + 증가*/
	@RequestMapping("plusCart.do")
	public String plusCart(String g_Id, String m_Id) {
		System.out.println("plusM_Id" + m_Id + "plusG_Id" + g_Id);
		cartService.plusCart(g_Id, m_Id);
		return "redirect:cart.do?m_Id="+m_Id;
	}
	
	/* 카트 - 감소*/
	@RequestMapping("minCart.do")
	public String minCart(String g_Id, String m_Id) {
		System.out.println("plusM_Id" + m_Id + "plusG_Id" + g_Id);
		cartService.minCart(g_Id, m_Id);
		return "redirect:cart.do?m_Id="+m_Id;
	}
	

}
