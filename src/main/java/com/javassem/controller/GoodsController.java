package com.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.GoodsVO;
import com.javassem.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;

	// 상품등록(관리자)
	@RequestMapping("saveGoods.do")
	public String insertGoods(GoodsVO vo) throws IOException {
		System.out.println("controller 확인");
		goodsService.insertGoods(vo);
		return "redirect:goodsList.do";
	}

	// 상품목록(관리자)
	@RequestMapping("goodsList.do")
	public void goodsList(GoodsVO vo, Model model) {
		model.addAttribute("goodsList", goodsService.goodsList(vo));
	}

	// 상품상세페이지(관리자)
	@RequestMapping("getGoods.do")
	public void getGoods(GoodsVO vo, Model m) {
		System.out.println(vo);
		GoodsVO result = goodsService.getGoods(vo);
		System.out.println(result);
		m.addAttribute("goods", result);
	}

	// 상품수정(관리자)
	@RequestMapping("updateGoods.do")
	public String updateBoard(GoodsVO vo, Model model) {
		goodsService.updateGoods(vo);
		;
		return "redirect:goodsList.do";

	}

	// 상품삭제(관리자)
	@RequestMapping("deleteGoods.do")
	public String deleteGoods(GoodsVO vo) {
		System.out.println("delete" + vo);
		goodsService.deleteGoods(vo);
		return "redirect:goodsList.do";
	}

	// 상품상세페이지
	@RequestMapping("goodsPage.do")
	public void goodsPage(GoodsVO vo, Model m) {
		System.out.println(vo);
		GoodsVO result = goodsService.goodsPage(vo);
		System.out.println(result);
		m.addAttribute("goods", result);
	}

	// *********** 상품목록
	@RequestMapping("/main/productList.do")
	public void productList(GoodsVO vo, Model model) {

		System.out.println("ct_id:" + vo.getCt_Id());
		System.out.println("sc_id:" + vo.getSc_Id());

		model.addAttribute("goodsList", goodsService.productList(vo));
	}

	//상품정렬
	@RequestMapping("/main/priceNum.do")
	public String priceNum(String priceNum, Model m) {
		System.out.println("priceNum:" + priceNum);

		HashMap map = new HashMap();
		map.put("priceNum", priceNum);
	
		List<GoodsVO> list = goodsService.priceNum(map);
		m.addAttribute("goods", list);
		return "redirect:/main/productList.do";
	}
	
	 //1121 일 찬주 추가 md 추천사진용
	 
	  @RequestMapping("mdRecommend.do") 
	public void mdRecommend(GoodsVO vo, Model model){
		  List<GoodsVO> list = goodsService.mdShop(vo);
	  model.addAttribute("mdList", list);
		}

}
