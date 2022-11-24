package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.CartDAO;
import com.javassem.domain.CartVO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;
	
	//장바구니 추가
	@Override
	public int addCart(CartVO cart) {
		// 장바구니 데이터 체크
		CartVO checkCart = cartDAO.checkCart(cart);
				
		if(checkCart != null) {
			return 2;
		}
		return cartDAO.addCart(cart);
	}

	// 장바구니 목록
	@Override
	public List<CartVO> getCartList(String m_Id) {
		List<CartVO> cart = cartDAO.getCartList(m_Id);
		
		for(CartVO dto : cart) {
			dto.initTotal();
		}
		
		return cart;
	}

	// 장바구니 삭제
	@Override
	public void deleteCart(String c_Id) {
		cartDAO.deleteCart(c_Id);
	}

	// 장바구니 수정
	@Override
	public void updateCart(CartVO cart) {
		cartDAO.updateCart(cart);
	}

	// 장바구니 상품 확인
	@Override
	public int countCart(String g_Id, String m_Id) {
		return cartDAO.countCart(g_Id, m_Id);
	}
	
	

}
