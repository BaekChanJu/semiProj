package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.BuyDAO;
import com.javassem.domain.BuyVO;
import com.javassem.domain.OrderDetailsVO;
import com.javassem.domain.OrderListVO;

@Service
public class BuyServiceImpl implements BuyService {

	@Autowired
	private BuyDAO buyDAO;

	// 카트 상품 정보
	@Override
	public List<BuyVO> goodsCartList(String m_Id) {
		return buyDAO.goodsCartList(m_Id);
	}

	// 고객 정보
	@Override
	public BuyVO memberCartInfo(String m_Id) {
		return buyDAO.memberCartInfo(m_Id);
	}

	// 주문 정보
	@Override
	public void buyInfo(BuyVO buy) {
		buyDAO.buyInfo(buy);

	}

	// 주문 상세 정보
	@Override
	public void orderInfo_Details(OrderDetailsVO orderDetails) {
		buyDAO.orderInfo_Details(orderDetails);

	}

	// 카트 삭제
	@Override
	public void cartAllDelete(String m_Id) {
		buyDAO.cartAllDelete(m_Id);

	}

	// 주문 목록
	@Override
	public List<BuyVO> orderList(BuyVO buy) {
		return buyDAO.orderList(buy);
	}

	// 특정 주문
	@Override
	public List<OrderListVO> orderView(BuyVO buy) {
		return buyDAO.orderView(buy);
	}

	// 주문 목록 <관리자>
	@Override
	public List<BuyVO> managerOrderList(BuyVO buy) {
		return buyDAO.managerOrderList(buy);
	}

	// 특정 주문 <관리자>
	@Override
	public List<OrderListVO> managerOrderView(BuyVO buy) {
		return buyDAO.managerOrderView(buy);
	}

	// 배송 상태<관리자>
	@Override
	public void delivery(BuyVO buy) {
		buyDAO.delivery(buy);
	}

}
