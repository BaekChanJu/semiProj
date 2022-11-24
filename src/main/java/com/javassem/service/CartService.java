package com.javassem.service;

import java.util.List;

import com.javassem.domain.CartVO;

public interface CartService {

	/* 장바구니 추가 */
	public int addCart(CartVO cart);
	
	/* 장바구니 정보 리스트 */
	public List<CartVO> getCartList(String m_Id);
	
	/* 카트 삭제 */
	public void deleteCart(String c_Id);
	
	/* 카트 수량 수정 */
	public void updateCart(CartVO cart);
	
	/* 카트 상품 확인*/
	public int countCart(String g_Id, String m_Id);


}
