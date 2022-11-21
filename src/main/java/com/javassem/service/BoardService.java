package com.javassem.service;

import java.util.List;

import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;

public interface BoardService {

	//qna 게시판 목록
	List<QnaVO> qnaList (QnaVO vo); 
	//free 게시판 목록
	List<FreeVO> freeList (FreeVO vo); 
	//qna 게시판 글 등록
	void qnaInsert(QnaVO vo);
	//free게시판 글 등록
	void freeInsert(FreeVO vo);
	//qna 상세보기 
	public QnaVO qnaDetail(QnaVO vo);
	//qna 삭제
	public void qnaDelete(QnaVO vo);
	//qna 수정
	public void qnaUpdate(QnaVO vo);
	//free 상세보기
	public FreeVO freeDetail(FreeVO vo);
	//free 삭제
	public void freeDelete(FreeVO vo);
	//free 수정
	public void freeUpdate(FreeVO vo);
	//style 게시판 목록
	List<StyleReviewVO> sytlelist(StyleReviewVO vo);
	//style 게시판 상세보기
	public StyleReviewVO styledetail(StyleReviewVO vo);

}

