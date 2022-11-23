package com.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.javassem.domain.GoodsVO;
import com.javassem.domain.PagingVO;
import com.javassem.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	
	
	
	@RequestMapping("/index")
	public String bestTest(GoodsVO vo, Model model) {
		List<GoodsVO> list = goodsService.bestShop(vo);
		List<GoodsVO> list2 = goodsService.newShop(vo);
	
	
		  System.out.println("--> list.size : "+list.size());
		  model.addAttribute("bestList", list);
		  model.addAttribute("newList", list2);
		
	
		return "index"; //화면에 베스트 아이템들이안뜸
	}
	

					
	

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
		
		List<GoodsVO> list = goodsService.productList(vo);
		System.out.println("productList확인:" +list);
		model.addAttribute("goodsList", list);
		
		PagingVO pageMaker = new PagingVO();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(goodsService.listCount(vo));
		System.out.println("listCount확인:" +goodsService.listCount(vo));
		model.addAttribute("pageMaker", pageMaker);
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
	  
	  PagingVO pageMaker = new PagingVO();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(goodsService.mdCount(vo));
		System.out.println("listCount확인:" +goodsService.listCount(vo));
		model.addAttribute("pageMaker", pageMaker);
		}
	  
	  
	  //1122 일 찬주 추가 best 추천사진용
		 
	  @RequestMapping("bestItems.do") 
	public void bestItems(GoodsVO vo, Model model){
		  List<GoodsVO> list = goodsService.bestShop(vo);
	  model.addAttribute("bestList", list);
		}
	  
	  
	  //1123일 new상품 찬주 추가
	  @RequestMapping("newItems.do") 
		public void newItems(GoodsVO vo, Model model){
		  System.out.println("vo :" + vo);
			  List<GoodsVO> list = goodsService.newShop(vo);
		  model.addAttribute("newList", list);
			}
	  

	  //1123일 전체상품 찬주 추가
	  @RequestMapping("allItems.do") 
		public void allItems(String searchKeyWord, Model model){
			System.out.println("searchKeyword:" + searchKeyWord);
			
			 HashMap map = new HashMap();
		    map.put("searchKeyWord", searchKeyWord);
			
			  List<GoodsVO> list = goodsService.allShop(map);
		  model.addAttribute("allItems", list);
			}
	  
	  
	
		
	  
}
