package com.javassem.dao;

import java.util.List;

import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;

public interface BoardDao {

	//qna 게시판 목록
	List<QnaVO> qnaList(QnaVO vo); 
	//free 게시판 목록
	List<FreeVO> freeList(FreeVO vo);
	//Style 게시판 목록보기
	List<StyleReviewVO> sytlelist(StyleReviewVO vo);
	//qna 게시판 글 등록
	void qnaInsert(QnaVO vo);
	//free 게시판 글 등록
	void freeInsert(FreeVO vo);
	//qna 게시판 상세 보기
	QnaVO qnaDetail(QnaVO vo);
	//qna 게시판 삭제
	void qnaDelete(QnaVO vo);
	//qna 게시판 수정
	void qnaUpdate(QnaVO vo);
	//free 게시판 상세보기
	FreeVO freeDetail(FreeVO vo);
	//free 게시판 삭제
	void freeDelete(FreeVO vo);
	//free 게시판 수정
	void freeUpdate(FreeVO vo);
	//Style 게시판 상세보기
	StyleReviewVO styledetail(StyleReviewVO vo);
	
	
}//end of BoardDao
