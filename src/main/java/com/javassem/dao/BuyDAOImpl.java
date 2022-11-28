package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.BuyVO;
import com.javassem.domain.OrderDetailsVO;
import com.javassem.domain.OrderListVO;

@Repository
public class BuyDAOImpl implements BuyDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 카트 목록
	@Override
	public List<BuyVO> goodsCartList(String m_Id) {
		System.out.println("===> Mybatis GoodsList() 호출");
		return mybatis.selectList("BuyDAO.goodsCartList",m_Id);
	}

	// 고객 정보
	@Override
	public BuyVO memberCartInfo(String m_Id) {
		System.out.println("===> Mybatis GoodsList() 호출");
		return mybatis.selectOne("BuyDAO.memberCartInfo",m_Id);
	}


	// 주문 정보
	@Override
	public void buyInfo(BuyVO buy) {
		System.out.println("===> Mybatis buyInfo() 호출" + buy);
		mybatis.insert("BuyDAO.buyInfo", buy);
	}

	// 주문상세
	@Override
	public void orderInfo_Details(OrderDetailsVO orderDetails) {
		System.out.println("===> Mybatis OrderDetails() 호출");
		mybatis.insert("BuyDAO.orderInfo_Details", orderDetails);
	}

	// 카트비우기
	@Override
	public void cartAllDelete(String m_Id) {
		System.out.println("===> Mybatis cartAllDelete() 호출");
		mybatis.delete("BuyDAO.cartAllDelete",m_Id);
	}

	// 주문 목록
	@Override
	public List<BuyVO> orderList(BuyVO buy) {
		System.out.println("===> Mybatis orderList() 호출");
		return mybatis.selectList("BuyDAO.orderList",buy);
	}

	// 특정 주문 목록
	@Override
	public List<OrderListVO> orderView(BuyVO buy) {
		System.out.println("===> Mybatis orderView() 호출" + buy);
		return mybatis.selectList("BuyDAO.orderView",buy);
	}
	
	// 주문 목록 <관리자>
	public List<BuyVO> managerOrderList(BuyVO buy){
		System.out.println("===> Mybatis managerOrderList() 호출");
		return mybatis.selectList("BuyDAO.managerOrderList",buy);
	}
			
	// 특정 주문 목록 <관리자>
	public List<OrderListVO> managerOrderView(BuyVO buy){
		System.out.println("===> Mybatis managerOrderView() 호출" + buy);
		return mybatis.selectList("BuyDAO.managerOrderView",buy);
	}

	// 배송 상태 <관리자>
	@Override
	public void delivery(BuyVO buy) {
		System.out.println("===> Mybatis managerOrderView() 호출");
		mybatis.update("BuyDAO.delivery", buy);
	}

}
