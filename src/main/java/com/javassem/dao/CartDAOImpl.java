package com.javassem.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.CartVO;

@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	// 카트 추가
	@Override
	public int addCart(CartVO cart) {
		System.out.println("===> Mybatis addCart() 호출");
		return mybatis.insert("CartDAO.addCart", cart);
	}

	// 카트 삭제
	@Override
	public void deleteCart(String c_Id) {
		System.out.println("===> Mybatis deleteCart() 호출");
		 mybatis.delete("CartDAO.deleteAllCart", c_Id);
	}
	
	// 카트 전체 삭제
		@Override
		public void deleteAllCart(String m_Id) {
			System.out.println("===> Mybatis deleteCart() 호출");
			 mybatis.delete("CartDAO.deleteCart", m_Id);
		}

	// 카트 수정
	@Override
	public void updateCart(CartVO cart) {
		System.out.println("===> Mybatis updateCart() 호출");
		mybatis.update("CartDAO.updateCart", cart);
	}

	// 카트 목록
	@Override
	public List<CartVO> getCartList(String m_Id) {
		System.out.println("===> Mybatis GoodsList() 호출");
		return mybatis.selectList("CartDAO.getCartList",m_Id);
	}

	// 카트 확인
	@Override
	public CartVO checkCart(CartVO cart) {
		// TODO Auto-generated method stub
		return null;
	}

	// 카트 동일 상품여부 확인
	@Override
	public int countCart(String g_Id, String m_Id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("g_Id", g_Id);
		map.put("m_Id", m_Id);
		System.out.println("g : " + g_Id + "m : " + m_Id);
		return mybatis.selectOne("CartDAO.countCart", map);
	}

	/* 카트 + 증가*/
	@Override
	public int plusCart(String g_Id, String m_Id) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("plusDAO g : "+ g_Id+"plusDAO m : "+ m_Id);
		map.put("g_Id", g_Id);
		System.out.println("plusDAO g2 : "+ map.put("g_Id", g_Id));
		map.put("m_Id", m_Id);
		System.out.println("plusDAO g2 : "+ map.put("m_Id", m_Id));
		System.out.println("map : " + map);
		if(mybatis == null)System.out.println("mybatis == null");
		else System.out.println("mybatis != null");
		return mybatis.update("CartDAO.plusCart", map);
	}

	/* 카트 - 감소*/
	@Override
	public int minCart(String g_Id, String m_Id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("g_Id", g_Id);
		map.put("m_Id", m_Id);
		return mybatis.update("CartDAO.minCart",map);
	}
}
