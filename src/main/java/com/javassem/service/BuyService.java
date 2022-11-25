package com.javassem.service;

import java.util.List;

import com.javassem.domain.BuyVO;
import com.javassem.domain.CartVO;

public interface BuyService {

	/* 카트 상품 정보 */
	public List<BuyVO> goodsCartList(String m_Id);
	
	/* 고객 정보  */
	public BuyVO memberCartInfo(String m_Id);
	
	// 구매 등록
	public void addBuy(BuyVO vo);
}
