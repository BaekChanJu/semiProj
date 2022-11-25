package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.BuyVO;
import com.javassem.service.BuyService;

@Controller
public class BuyController {

	@Autowired
	private BuyService buyService; 
	
	@GetMapping("checkOut.do")
	// 카트 정보
	public void goodsCartList(String m_Id, Model model) {
		System.out.println("컨트롤Buy : " + m_Id);
		model.addAttribute("goodsList", buyService.goodsCartList(m_Id));
		model.addAttribute("memberInfo", buyService.memberCartInfo(m_Id));
	}
	
	@RequestMapping("addBuy.do")
	public String insertGoods(BuyVO vo) {
		System.out.println("controller 확인");
		buyService.addBuy(vo);
		return "";
	}

}
