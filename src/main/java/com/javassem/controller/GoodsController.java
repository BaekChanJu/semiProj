package com.javassem.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.GoodsVO;
import com.javassem.service.GoodsService;

@Controller
public class GoodsController {
	
	@Autowired
	private GoodsService goodsService;
	
	// 상품등록
	@RequestMapping("saveGoods.do") 
	public String insertGoods(GoodsVO vo) throws IOException {
		System.out.println("controller 확인");
		goodsService.insertGoods(vo);
		return "redirect:goodsList.do";
	}
	
	// 상품목록
	@RequestMapping("goodsList.do")
	public void goodsList(GoodsVO vo, Model model) {
		model.addAttribute("goodsList", goodsService.goodsList(vo));
	}
	
	// 상품상세페이지
	@RequestMapping("getGoods.do")
	public void getGoods(GoodsVO vo, Model m) {
		System.out.println(vo);
		GoodsVO result = goodsService.getGoods(vo);
		System.out.println(result);
		m.addAttribute("goods", result);
	}
	
	// 상품수정
	@RequestMapping("updateGoods.do")
	public String updateBoard(GoodsVO vo, Model model) {
		goodsService.updateGoods(vo);;
		 return "redirect:goodsList.do";

	}
	
	// 상품삭제
	@RequestMapping("deleteGoods.do")
	public String deleteGoods(GoodsVO vo) {
		System.out.println("delete"+ vo);
		goodsService.deleteGoods(vo);
		return "redirect:goodsList.do";
	}

}
