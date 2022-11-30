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
		System.out.println("===> Mybatis productList() 호출 >" + vo.getRowStart()+":"+vo.getRowEnd());
		
		
		return mybatis.selectList("GoodsDAO.productList",vo);
	}
	
	// 상품 갯수
	public int listCount(GoodsVO vo) {
		System.out.println("===> Mybatis listCount() 호출" +vo);
		return mybatis.selectOne("GoodsDAO.listCount",vo);
		
	}
	
	// 상품 정렬
	public List<GoodsVO> priceNum(GoodsVO vo) {
		System.out.println("===> Mybatis priceNum() 호출 : " + vo.getRowStart()+":"+vo.getRowEnd());
		System.out.println("priceNum DAO 확인 : " + vo);
		return mybatis.selectList("GoodsDAO.priceNum",vo);
	}

	// MD추천 상품 목록
	@Override
	public List<GoodsVO> mdItems(GoodsVO vo) {
		System.out.println("===> Mybatis mainShoes() 호출");
		return mybatis.selectList("GoodsDAO.mdItems",vo);
	}


	// 상품 갯수
		public int mdCount(GoodsVO vo) {
			System.out.println("===> Mybatis mdCount() 호출" +vo);
			return mybatis.selectOne("GoodsDAO.mdCount",vo);
			
		}
		

		//베스트용
		public List<GoodsVO> bestItem(GoodsVO vo){
			System.out.println("===> bestItems 호출");
			return mybatis.selectList("GoodsDAO.bestItems",vo);
		}

		
		//newList 용
		public List<GoodsVO> newItem(GoodsVO vo){
				System.out.println("===> newItems 호출");
				return mybatis.selectList("GoodsDAO.newItems",vo);
			}
		
		
		//전체앤 검색용
			public List<GoodsVO> allItem(HashMap map){
					System.out.println("===> allItems 호출");
					System.out.println(map.get("searchKeyword"));
					
					return mybatis.selectList("GoodsDAO.allItems",map);
				}





}
