package com.javassem.dao;

import java.util.List;

import com.javassem.domain.BuyVO;
import com.javassem.domain.CartVO;

public interface BuyDAO {

	/* 카트 상품 목록 */
	public List<BuyVO> goodsCartList(String m_Id);
	
	/* 고객 정보 목록 */
	public BuyVO memberCartInfo(String m_Id);
	
	// 결제 등록
	public void addBuy(BuyVO vo);
}
