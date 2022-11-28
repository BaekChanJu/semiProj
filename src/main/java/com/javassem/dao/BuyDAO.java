package com.javassem.dao;

import java.util.List;

import com.javassem.domain.BuyVO;
import com.javassem.domain.OrderDetailsVO;
import com.javassem.domain.OrderListVO;

public interface BuyDAO {

	/* 카트 상품 목록 */
	public List<BuyVO> goodsCartList(String m_Id);
	
	/* 고객 정보 목록 */
	public BuyVO memberCartInfo(String m_Id);
	
	// 주문 정보
	public void buyInfo(BuyVO buy);
	
	// 주문 상세 정보
	public void orderInfo_Details(OrderDetailsVO orderDetails);
	
	// 카트 비우기
	public void cartAllDelete(String m_Id);
	
	// 주문 목록
	public List<BuyVO> orderList(BuyVO buy);
	
	// 특정 주문 목록
	public List<OrderListVO> orderView(BuyVO buy);
	
	// 주문 목록 <관리자>
	public List<BuyVO> managerOrderList(BuyVO buy);
		
	// 특정 주문 목록 <관리자>
	public List<OrderListVO> managerOrderView(BuyVO buy);
	
	// 배송 상태 <관리자>
	public void delivery(BuyVO buy);
}
