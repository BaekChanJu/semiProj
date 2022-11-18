package com.javassem.dao;

import java.util.List;

import com.javassem.domain.FreeVO;
import com.javassem.domain.QnaVO;

public interface BoardDao {

	//qna 게시판 목록
	List<QnaVO> qnaList(QnaVO vo); 
	//free 게시판 목록
	List<FreeVO> freeList(FreeVO vo);
	//qna 게시판 글 등록
	void qnaInsert(QnaVO vo);
	//free 게시판 글 등록
	void freeInsert(FreeVO vo);

}//end of BoardDao
