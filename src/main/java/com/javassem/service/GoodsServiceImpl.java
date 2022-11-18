package com.javassem.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.GoodsDAO;
import com.javassem.domain.GoodsVO;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Autowired
	private GoodsDAO goodsDAO;
	
	// 상품 등록
	@Override
	public void insertGoods(GoodsVO vo) {
		System.out.println("insertGoods 확인");
		goodsDAO.insertGoods(vo);	
	}

	// 상품 수정
	@Override
	public void updateGoods(GoodsVO vo) {
		goodsDAO.updateGoods(vo);
		
	}

	// 상품 삭제
	@Override
	public void deleteGoods(GoodsVO vo) {
		goodsDAO.deleteGoods(vo);
	}

	// 상품 상세 조회
	@Override
	public GoodsVO getGoods(GoodsVO vo) {
		return goodsDAO.getGoods(vo);
	}

	// 상품 목록
	@Override
	public List<GoodsVO> goodsList(GoodsVO vo) {
		System.out.println("getGoodsList 확인");
		return goodsDAO.goodsList(vo);
	}

}
