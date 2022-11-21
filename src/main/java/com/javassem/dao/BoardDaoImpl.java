package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Repository;

import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired 
	private SqlSessionTemplate mybatis;

	//qna 게시판 목록 
	public List<QnaVO> qnaList(QnaVO vo) { 
		System.out.println("===> Mybatis 다오 qnaList() 호출"); 
		return mybatis.selectList("board.qnaList"); 
	}//end of qnaList

	//free 게시판 목록 
	public List<FreeVO> freeList(FreeVO vo){
		System.out.println("===> Mybatis 다오 freeList() 호출"); 
		return mybatis.selectList("board.freeList"); 

	}//end of freeList

	//qna 게시판 글 등록
	public void qnaInsert(QnaVO vo){
		System.out.println("다오 qnaInsert 호출");
		mybatis.insert("board.qnainsert",vo);
	}//end of qnaInsert

	//qna 게시판 글 등록
	public void freeInsert(FreeVO vo){
		System.out.println("다오 qnaInsert 호출");
		mybatis.insert("board.freeinsert",vo);
	}//end of freeInsert

	//qna 상세보기
	public QnaVO qnaDetail(QnaVO vo) {
		System.out.println("다오 qnadetail 호출");
	 return	mybatis.selectOne("board.qnadetail", vo);	
	}//end of qnaDetail
	
	//qna 게시판 삭제
	public void qnaDelete(QnaVO vo) {
		System.out.println("다오 qna DELETE 호출");
		mybatis.delete("board.qnadelete",vo);
	}//end of qnaDelete
	
	//qna 게시판 수정
	public void qnaUpdate(QnaVO vo) {
		System.out.println("다오 qna update 호출");
		mybatis.update("board.qnaupdate",vo);
	}//end of qnaUpdate
	
	//free 게시판 상세보기
	public FreeVO freeDetail(FreeVO vo) {
		System.out.println("다오 freeDetail 호출");
		return mybatis.selectOne("board.freedetail",vo);
	}//end of freeDetail
	
	//free 게시판 삭제
	public void freeDelete(FreeVO vo) {
		System.out.println("다오 freeDelete 호출 :"+vo);
		 mybatis.delete("board.freedelete",vo);
	}//end of freeDelete
	
	//free 게시판 수정
	public void freeUpdate(FreeVO vo) {
		System.out.println("다오 freeUpdate 호출 :"+vo);
		mybatis.update("board.freeupdate",vo);
	}//end of freeUpdate
	
	//style 게시판 목록보기
	public List<StyleReviewVO> sytlelist(StyleReviewVO vo) {
		System.out.println("다오 sytlelist() 호출"+vo);
		return mybatis.selectList("board.stylelist",vo);
	}//end of sytlelist
	
	//style 게시판 상세보기
	public StyleReviewVO styledetail(StyleReviewVO vo) {
		System.out.println("다오 styleDetail 호출"+vo);
		return mybatis.selectOne("board.styledetail",vo);
	}
	
	

}
 