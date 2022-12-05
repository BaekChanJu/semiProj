package com.javassem.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javassem.domain.BuyVO;
import com.javassem.domain.CancelVO;
import com.javassem.domain.OrderDetailsVO;
import com.javassem.domain.OrderListVO;
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

	// 주문
	@PostMapping("checkOut.do")
	public String order(HttpSession session, BuyVO buy, OrderDetailsVO orderDetails) {

		System.out.println(buy.getTotalPrice());
		
		Object obj = session.getAttribute("login");
		System.out.println(obj);
		
		if( obj == null) {
			System.out.println("obj == null");
			return "redirect:login";
		}
		
		String m_Id = (String)obj;

		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String subNum = "";

		for (int i = 1; i <= 6; i++) {
			subNum += (int) (Math.random() * 10);
		}

		String b_Id = ymd + "_" + subNum;

		buy.setB_Id(b_Id);
		buy.setM_Id(m_Id);
		orderDetails.setM_Id(m_Id);

		buyService.buyInfo(buy);
		System.out.println();
		orderDetails.setB_Id(b_Id);

		buyService.orderInfo_Details(orderDetails);

		buyService.cartAllDelete(m_Id);

		return "redirect:orderList";
	}
	
	// 주문 목록
	@RequestMapping("orderList")
	public String getOrderList(HttpSession session, BuyVO buy, Model model){
	 
		Object obj = session.getAttribute("login");
		System.out.println(obj);
		
		if( obj == null) {
			System.out.println("obj == null");
			return "redirect:login.do";
		}
		
	 String m_Id = (String) obj;
	 
	 buy.setM_Id(m_Id);
	 
	 
	 List<BuyVO> orderList = buyService.orderList(buy);
	 
	 model.addAttribute("orderList", orderList);
	 
	 
	 return "orderList";
	}
	
	// 주문 상세 목록
	@RequestMapping("orderView.do")
	public void getOrderList(HttpSession session,
	      @RequestParam("b_Id") String b_Id,
	      BuyVO buy, Model model){
	 
	 Object obj = session.getAttribute("login");
	 String m_Id = (String)obj;
	 
	 buy.setM_Id(m_Id);
	 buy.setB_Id(b_Id);
	 System.out.println(buy.getM_Id());
	 System.out.println(buy.getB_Id());
	 
	 List<OrderListVO> orderView = buyService.orderView(buy);
	 
	 model.addAttribute("orderView", orderView);
	}
	
	// 취소 교환 반품 주문 상세 목록
	@RequestMapping("cancelGoods.do")
	public void cancelGoods(HttpSession session,
	      @RequestParam("b_Id") String b_Id,
	      BuyVO buy, Model model){
	 
	 Object obj = session.getAttribute("login");
	 String m_Id = (String)obj;
	 
	 buy.setM_Id(m_Id);
	 buy.setB_Id(b_Id);
	 System.out.println(buy.getM_Id());
	 System.out.println(buy.getB_Id());
	 
	 List<OrderListVO> cancelGoods = buyService.orderView(buy);
	 
	 model.addAttribute("cancelGoods", cancelGoods);
	}
	
	// 취소 교환 반품 등록
	@RequestMapping("insertCancel.do")
	public String insertCancel(HttpSession session, CancelVO cancel, BuyVO buy)  {
		Object obj = session.getAttribute("login");
		 String m_Id = (String)obj;
		
		System.out.println("List controller 확인 : " + buy);
		buyService.insertCancel(cancel);
		buyService.delivery(buy);
		
		return "redirect:orderList.do?m_Id=" + m_Id;
	}
	
	// 주문 목록 < 관리자>
		@RequestMapping("managerOrderList")
		public void managerOrderList( BuyVO buy, Model model){

		 List<BuyVO> orderList = buyService.managerOrderList(buy);
		 
		 model.addAttribute("orderList", orderList);

		}
		
		// 주문 상세 목록 <관리자>
		@RequestMapping("managerOrderView.do")
		public void managerOrderList(
		      @RequestParam("b_Id") String b_Id,
		      BuyVO buy, Model model){

		 buy.setB_Id(b_Id);
		 System.out.println(buy.getB_Id());
		 
		 List<OrderListVO> orderView = buyService.managerOrderView(buy);
		 System.out.println(orderView);
		 
		 model.addAttribute("orderView", orderView);
		}
		
		// 배송 상태 <관리자>
		@PostMapping("managerOrderView.do")
		public String delivery(BuyVO buy) {
		   
		 buyService.delivery(buy);

		 return "redirect:managerOrderList.do?b_Id=" + buy.getB_Id();
		}
		
		// 취소 교환 반품 주문 상세 목록 <관리자>
		@RequestMapping("managerCancelGoods.do")
		public void managerCancelGoods(
		      @RequestParam("b_Id") String b_Id,
		      BuyVO buy, CancelVO cancel, Model model){	 
		 buy.setB_Id(b_Id);
		 //System.out.println(buy.getB_Id());	 
		 List<OrderListVO> cancelGoods = buyService.managerOrderView(buy);
		 CancelVO selectCancel = buyService.selectCancel(cancel);
		 model.addAttribute("cancelGoods", cancelGoods);
		 model.addAttribute("selectCancel", selectCancel);		 
		}
		
		// 취소 교환 반품 수정
		@RequestMapping("delivery.do")
		public String selectCancel(HttpSession session, CancelVO cancel, BuyVO buy)  {
			System.out.println("controller 확인" + buy);
			 buyService.delivery(buy);
			return "redirect:managerOrderList.do?b_Id=" + buy.getB_Id();
		}
		
		

}
