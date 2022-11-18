package com.javassem.service;

import java.util.List;

import com.javassem.domain.FreeVO;
import com.javassem.domain.QnaVO;

public interface BoardService {

	//qna 게시판 목록
	List<QnaVO> qnaList (QnaVO vo); 
	//free 게시판 목록
	List<FreeVO> freeList (FreeVO vo); 
	//qna 게시판 글 등록
	void qnaInsert(QnaVO vo);

	void freeInsert(FreeVO vo);

}
