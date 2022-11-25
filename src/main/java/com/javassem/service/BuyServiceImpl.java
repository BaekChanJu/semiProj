package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.BuyDAO;
import com.javassem.domain.BuyVO;


@Service
public class BuyServiceImpl implements BuyService{
	
	@Autowired		
	private BuyDAO buyDAO; 
	
	// 카트 상품 정보
	@Override
	public List<BuyVO> goodsCartList(String m_Id) {
		System.out.println("m_Id 확인 : " + m_Id);
		System.out.println("buySrevice 확인 : "+ buyDAO.goodsCartList(m_Id));
		return buyDAO.goodsCartList(m_Id);
	}

	// 고객 정보
	@Override
	public BuyVO memberCartInfo(String m_Id) {
		return buyDAO.memberCartInfo(m_Id);
	}

	// 구매등록
	@Override
	public void addBuy(BuyVO vo) {
		buyDAO.addBuy(vo);
	}

}
