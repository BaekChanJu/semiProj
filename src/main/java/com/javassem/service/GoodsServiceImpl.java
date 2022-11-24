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
	
	// 상품 등록(관리자)
	@Override
	public void insertGoods(GoodsVO vo) {
		System.out.println("insertGoods 확인");
		goodsDAO.insertGoods(vo);	
	}

	// 상품 수정(관리자)
	@Override
	public void updateGoods(GoodsVO vo) {
		goodsDAO.updateGoods(vo);
		
	}

	// 상품 삭제(관리자)
	@Override
	public void deleteGoods(GoodsVO vo) {
		goodsDAO.deleteGoods(vo);
	}

	// 상품 상세 조회(관리자)
	@Override
	public GoodsVO getGoods(GoodsVO vo) {
		return goodsDAO.getGoods(vo);
	}

	// 상품 목록(관리자)
	@Override
	public List<GoodsVO> goodsList(GoodsVO vo) {
		System.out.println("getGoodsList 확인");
		return goodsDAO.goodsList(vo);
	}
	
	// 상품 상세 조회
	@Override
	public GoodsVO goodsPage(GoodsVO vo) {
		return goodsDAO.goodsPage(vo);
	}


	// *********** 상품목록
	@Override
	public List<GoodsVO> productList(GoodsVO vo) {
		return goodsDAO.productList(vo);
	}
	
	// 상품목록 게시물 총 갯수
	public int listCount(GoodsVO vo) {
		return goodsDAO.listCount(vo);
	}
	
	// 상품정렬
	public List<GoodsVO> priceNum(HashMap map) {
		return goodsDAO.priceNum(map);
	}
	
	// md상품목록
	@Override
	public List<GoodsVO> mdShop(GoodsVO vo) {
		return goodsDAO.mdItems(vo);
	}
	
	
	// md 페이징 카운트
	public int mdCount(GoodsVO vo) {
		return goodsDAO.mdCount(vo);
	}
	
	
	//베스트상품용
		public List<GoodsVO> bestShop(GoodsVO vo){
			return goodsDAO.bestItem(vo);
		}
		
		
		//new상품용
		public List<GoodsVO> newShop(GoodsVO vo){
			return goodsDAO.newItem(vo);
		}

		//전체 검색 용
			public List<GoodsVO> allShop(HashMap map){
				return goodsDAO.allItem(map);
			}
		
	
	

}
