package com.javassem.service;

import java.util.List;

import com.javassem.domain.BuyVO;
import com.javassem.domain.CancelVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.OrderDetailsVO;
import com.javassem.domain.OrderListVO;

public interface BuyService {

	/* 카트 상품 정보 */
	public List<BuyVO> goodsCartList(String m_Id);

	/* 고객 정보 */
	public BuyVO memberCartInfo(String m_Id);

	// 주문 정보
	public void buyInfo(BuyVO buy);

	// 주문 상세 정보
	public void orderInfo_Details(OrderDetailsVO orderDetails);

	// 카트 삭제
	public void cartAllDelete(String m_Id);

	// 주문 목록
	public List<BuyVO> orderList(BuyVO buy);

	// 특정 주문 목록
	public List<OrderListVO> orderView(BuyVO buy);
	
	// 취소 교환 반품 등록
	public void insertCancel(CancelVO cancel);

	// 주문 목록 <관리자>
	public List<BuyVO> managerOrderList(BuyVO buy);

	// 특정 주문 목록 <관리자>
	public List<OrderListVO> managerOrderView(BuyVO buy);
	
	// 배송 상태 <관리자>
	public void delivery(BuyVO buy);
	
	// 취소 교환 반품 상세사유
	public CancelVO selectCancel(CancelVO cancel);
}
