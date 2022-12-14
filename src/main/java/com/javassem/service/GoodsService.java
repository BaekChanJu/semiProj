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

	// 상품 갯수
	int listCount(GoodsVO vo);

	// 상품정렬
	List<GoodsVO> priceNum(GoodsVO vo);

	// 1121찬주추가 /md추천상품용
	List<GoodsVO> mdShop(GoodsVO vo);

	int mdCount(GoodsVO vo);

	// 1122일 베스트 상품용
	List<GoodsVO> bestShop(GoodsVO vo);

	// 1123일 new상품용
	List<GoodsVO> newShop(GoodsVO vo);

	// 1123일 전체상품용
	List<GoodsVO> allShop(HashMap map);

}
