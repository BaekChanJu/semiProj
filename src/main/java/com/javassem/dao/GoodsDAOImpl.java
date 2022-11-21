package com.javassem.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.GoodsVO;

@Repository
public class GoodsDAOImpl implements GoodsDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 상품 등록(관리자)
	@Override
	public void insertGoods(GoodsVO vo) {
		System.out.println("===> Mybatis insertGoodsDAO() 호출");
		mybatis.insert("GoodsDAO.insertGoods", vo);
		
	}

	// 상품 수정(관리자)
	@Override
	public void updateGoods(GoodsVO vo) {
		System.out.println("===> Mybatis updateGoods() 호출");
		mybatis.update("GoodsDAO.updateGoods", vo);
		
	}

	// 상품 삭제(관리자)
	@Override
	public void deleteGoods(GoodsVO vo) {
		System.out.println("===> Mybatis deleteGoods() 호출");
		mybatis.delete("GoodsDAO.deleteGoods", vo);
		
	}

	// 상품 상세내용(관리자)
	@Override
	public GoodsVO getGoods(GoodsVO vo) {
		System.out.println("===> Mybatis getGoods() 호출");
		return mybatis.selectOne("GoodsDAO.getGoods", vo);
	}

	// 상품 목록(관리자)
	@Override
	public List<GoodsVO> goodsList(GoodsVO vo) {
		System.out.println("===> Mybatis GoodsList() 호출");
		return mybatis.selectList("GoodsDAO.goodsList",vo);
	}
	
	// 상품 상세내용
	@Override
	public GoodsVO goodsPage(GoodsVO vo) {
		System.out.println("===> Mybatis goodsPage() 호출");
		return mybatis.selectOne("GoodsDAO.goodsPage", vo);
	}
	
	// *********** 상품목록
	@Override
	public List<GoodsVO> productList(GoodsVO vo) {
		System.out.println("===> Mybatis productList() 호출");
		return mybatis.selectList("GoodsDAO.productList",vo);
	}
	
	public List<GoodsVO> priceNum(HashMap map) {
		System.out.println("===> Mybatis priceNum() 호출");
		return mybatis.selectList("GoodsDAO.priceNum",map);
	}


	@Override
	public List<GoodsVO> mdItems(GoodsVO vo) {
		System.out.println("===> Mybatis mainShoes() 호출");
		return mybatis.selectList("GoodsDAO.mdItems",vo);
	}


}
