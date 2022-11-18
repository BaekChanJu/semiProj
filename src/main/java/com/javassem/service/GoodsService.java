package com.javassem.service;

import java.util.HashMap;
import java.util.List;

import com.javassem.domain.GoodsVO;

public interface GoodsService {
	
	// 상품 등록
	void insertGoods(GoodsVO vo);

	// 상품 수정
	void updateGoods(GoodsVO vo);

	// 상품 삭제
	void deleteGoods(GoodsVO vo);

	// 상품 상세 조회
	GoodsVO getGoods(GoodsVO vo);

	// 상품 목록 조회
	List<GoodsVO> goodsList(GoodsVO vo);

}
