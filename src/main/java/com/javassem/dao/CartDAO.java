package com.javassem.dao;

import java.util.List;

import com.javassem.domain.CartVO;

public interface CartDAO {

	
	/* 카트 추가 */
	public int addCart(CartVO cart);
	
	/* 카트 삭제 */
	public void deleteCart(String c_Id);
	
	/* 카트 수량 수정 */
	public void updateCart(CartVO cart);
	
	/* 카트 목록 */
	public List<CartVO> getCartList(String m_Id);	
	
	/* 카트 확인 */
	public CartVO checkCart(CartVO cart);
	
	/* 카트 동일한 상품 레코드 확인*/
	public int countCart(String g_Id, String m_Id);
}
