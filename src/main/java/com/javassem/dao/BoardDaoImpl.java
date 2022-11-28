package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate; 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Repository;

import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;
import com.javassem.domain.freeppVO;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired 
	private SqlSessionTemplate mybatis;

	//qna 게시판 목록 
	public List<QnaVO> qnaList(QnaVO vo) { 
		System.out.println("===> Mybatis 다오 qnaList() 호출 >"+ vo.getRowStart()+":"+vo.getRowEnd()); 
		return mybatis.selectList("board.qnaList", vo); 
	}//end of qnaList

	//free 게시판 목록 
	public List<FreeVO> freeList(FreeVO vo){
		System.out.println("===> Mybatis 다오 freeList() 호출");
		System.out.println(vo.getG_cid());
		System.out.println(vo.getF_id());
		System.out.println(vo.getRowStart());
		System.out.println(vo.getRowEnd());
		
		return mybatis.selectList("board.freeList", vo); 

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
	
	//style 게시판 등록
	public void styleInsert(StyleReviewVO vo) {
		System.out.println("다오 styleInsert 호출"+vo);
		mybatis.insert("board.styleinsert",vo);
	}
	
	//style 게시판 수정
	public void styleUpdate(StyleReviewVO vo) {
		System.out.println("다오 styleUpdate 호출"+vo);
		mybatis.update("board.styleupdate",vo);
	}
	
	//qna 게시판 총 레코드 개수
	public int listCount(QnaVO vo) {
		System.out.println("===> Mybatis listCount() 호출" +vo);
		return mybatis.selectOne("board.listCount",vo);
		
	}
	
	//free게시판 총 레코드 개수
	public int listCount1(FreeVO vo) {
		System.out.println("===> Mybatis listCount() 호출" +vo);
		return mybatis.selectOne("board.listCount1",vo);
		
	}
	
	//style 게시판 총 레코드 개수
	public int listCount2(StyleReviewVO vo) {
		System.out.println("===> Mybatis listCount() 호출" +vo);
		return mybatis.selectOne("board.listCount2",vo);	
		}
	
	//qna 게시판 답글 출력
	public QnaVO qnaAnswer(QnaVO vo) {
		System.out.println("다오 qnadetail 호출");
	 return	mybatis.selectOne("board.qnaanswer", vo);	
	}//end of qnaDetail
	
	//qna 게시판 답글 등록
	public void qnaWrite (QnaVO vo) {
		System.out.println("다오 qnaWrite 호출"+vo);
		mybatis.insert("board.qnaWrite",vo);
	}
	

}
 