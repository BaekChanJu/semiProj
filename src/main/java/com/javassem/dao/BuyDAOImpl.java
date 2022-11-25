package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.BuyVO;

@Repository
public class BuyDAOImpl implements BuyDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	// 카트 목록
	@Override
	public List<BuyVO> goodsCartList(String m_Id) {
		System.out.println("===> Mybatis GoodsList() 호출");
		System.out.println("BuygoodsDAO M_Id 확인 " + m_Id);
		return mybatis.selectList("BuyDAO.goodsCartList",m_Id);
	}

	// 고객 정보
	@Override
	public BuyVO memberCartInfo(String m_Id) {
		System.out.println("===> Mybatis GoodsList() 호출");
		System.out.println("Buymember m_Id 확인 : " +m_Id );
		return mybatis.selectOne("BuyDAO.memberCartInfo",m_Id);
	}

	// 구매 등록
	@Override
	public void addBuy(BuyVO vo) {
		System.out.println("===> Mybatis addBuy() 호출");
		System.out.println(vo);
		mybatis.insert("BuyDAO.addBuy", vo);
	}

}
