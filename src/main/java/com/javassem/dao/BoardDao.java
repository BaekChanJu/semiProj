package com.javassem.dao;

import java.util.List;

import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;
import com.javassem.domain.freeppVO;

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
	//Style 게시판 등록
	void styleInsert(StyleReviewVO vo);
	//Style 게시판 수정
	void styleUpdate(StyleReviewVO vo);
	//qna 게시판 총합 갯수
	public int listCount(QnaVO vo);
	//Free 게시판 총합 갯수
	public int listCount1(FreeVO vo);
	//style 게시판 총합 갯수
	public int listCount2(StyleReviewVO vo);
	//qna 게시판 답변
	QnaVO qnaAnswer(QnaVO vo);
	//qna 게시판 답변 등록
	void qnaWrite(QnaVO vo);
	
}//end of BoardDao
