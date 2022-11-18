package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.javassem.dao.BoardDao; import com.javassem.dao.BoardDaoImpl;
import com.javassem.domain.FreeVO;
import com.javassem.domain.QnaVO;

@Service 
public class BoardServiceImpl implements BoardService{

	@Autowired 
	private BoardDaoImpl boardDao;

	//qna 게시판 목록 서비스
	public List<QnaVO> qnaList (QnaVO vo){ 
		System.out.println("서비스 qna 요청 완료");
		return boardDao.qnaList(vo); 
	}//end of qnaList

	//free 게시판 목록 서비스
	public List<FreeVO> freeList (FreeVO vo){ 
		System.out.println("서비스 free 요청 완료");
		return boardDao.freeList(vo); 
	}//end of freeList

	//qna 게시판 글 등록
	public void qnaInsert(QnaVO vo) {
		System.out.println("서비스 qnaInsert 요청 완료");
		boardDao.qnaInsert(vo);
	}//end of qnaInsert

	//free 게시판 글 등록
	public void freeInsert(FreeVO vo) {
		System.out.println("서비스 freeInsert 요청 완료");
		boardDao.freeInsert(vo);
	}//end of freeInsert






}
