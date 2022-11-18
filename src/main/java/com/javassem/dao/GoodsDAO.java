package com.javassem.dao;

import java.util.HashMap;
import java.util.List;

import com.javassem.domain.GoodsVO;

public interface GoodsDAO {
	
	// 상품 등록
	public void insertGoods(GoodsVO vo);
	
	// 상품 수정
	public void updateGoods(GoodsVO vo) ;
	
	// 상품 삭제
	public void deleteGoods(GoodsVO vo);
	
	// 상품 상세 내용
	public GoodsVO getGoods(GoodsVO vo) ;
	
	// 상품 목록
	public List<GoodsVO> goodsList(GoodsVO vo) ;

}
