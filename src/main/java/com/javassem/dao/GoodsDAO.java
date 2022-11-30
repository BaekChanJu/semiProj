package com.javassem.dao;


import java.util.HashMap;
import java.util.List;

import com.javassem.domain.GoodsVO;


public interface GoodsDAO {
	
	// 상품 등록(관리자)
	public void insertGoods(GoodsVO vo);
	
	// 상품 수정(관리자)
	public void updateGoods(GoodsVO vo) ;
	
	// 상품 삭제(관리자)
	public void deleteGoods(GoodsVO vo);
	
	// 상품 상세 내용 (관리자)
	public GoodsVO getGoods(GoodsVO vo) ;
	
	// 상품 목록(관리자)
	public List<GoodsVO> goodsList(GoodsVO vo) ;
	
	
	// 상품 상세 내용
	public GoodsVO goodsPage(GoodsVO vo) ;
	
	
	// *********** 상품목록
	public List<GoodsVO> productList(GoodsVO vo) ;
	
	// 상품 갯수
	public int listCount(GoodsVO vo);
	
	// 상품 정렬
	public List<GoodsVO> priceNum(GoodsVO vo) ;


	//1121 찬주추가 md
	public List<GoodsVO> mdItems(GoodsVO vo);
	public int mdCount(GoodsVO vo);
	
	//베스트용
	public List<GoodsVO> bestItem(GoodsVO vo);
	
	//new 용
	public List<GoodsVO> newItem(GoodsVO vo);
	
	//전체앤검색 용
	public List<GoodsVO> allItem(HashMap map);
	

}
