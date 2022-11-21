package com.javassem.service;


import java.util.HashMap;
import java.util.List;


import com.javassem.domain.GoodsVO;

public interface GoodsService {
	
	// 상품 등록(관리자)
	void insertGoods(GoodsVO vo);

	// 상품 수정(관리자)
	void updateGoods(GoodsVO vo);

	// 상품 삭제(관리자)
	void deleteGoods(GoodsVO vo);

	// 상품 상세 조회(관리자)
	GoodsVO getGoods(GoodsVO vo);

	// 상품 목록 조회(관리자)
	List<GoodsVO> goodsList(GoodsVO vo);
	
	// 상품 상세 조회
		GoodsVO goodsPage(GoodsVO vo);

	// *********** 상품목록
	List<GoodsVO> productList(GoodsVO vo);
	
	// 상품정렬
	List<GoodsVO> priceNum(HashMap map);
	

	//1121찬주추가 /md추천상품용
	List<GoodsVO> mdShop(GoodsVO vo);
	
	
	
}
