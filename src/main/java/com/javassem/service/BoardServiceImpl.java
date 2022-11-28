package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.javassem.dao.BoardDao; import com.javassem.dao.BoardDaoImpl;
import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;
import com.javassem.domain.freeppVO;

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
	
	//qna 게시판 상세보기 
	public QnaVO qnaDetail(QnaVO vo) {
		System.out.println("서비스 qnaDetail 요청 완료");
		return boardDao.qnaDetail(vo);
	}//end of qnaDetail
	
	//qna 게시판 삭제
	public void qnaDelete(QnaVO vo) {
		System.out.println("서비스 qnaDelete 요청 완료 ");
		boardDao.qnaDelete(vo);
	}//end of qnaDelete
	
	//qna 게시판 수정
	public void qnaUpdate(QnaVO vo) {
		System.out.println("서비스 qnaUpdate 요청완료");
		boardDao.qnaUpdate(vo);
	}//end of qnaUpdate
	
	//free 게시판 상세보기
	public FreeVO freeDetail(FreeVO vo) {
		System.out.println("서비스 freeDetail 요청완료");
		return boardDao.freeDetail(vo);
	}//end of freeDetail
	
	//free 게시판 삭제
	public void freeDelete(FreeVO vo) {
		System.out.println("서비스 freeDelete 요청완료");
		boardDao.freeDelete(vo);
	}//end of freeDelete
	
	//free 게시판 수정
	public void freeUpdate(FreeVO vo) {
		System.out.println("서비스 freeUpdate 요청완료");
		boardDao.freeUpdate(vo);
	}//end of freeUpdate

	//style 게시판 목록보기
	public List<StyleReviewVO> sytlelist(StyleReviewVO vo) {
		System.out.println("서비스 sytlelist 확인");
		return boardDao.sytlelist(vo);
	}//end of sytlelist

	//style 게시판 상세보기
	public StyleReviewVO styledetail(StyleReviewVO vo) {
		System.out.println("서비스 styledetail 확인");
		return boardDao.styledetail(vo);
	}//end of styledetail
	
	//style 게시판 등록
	public void styleInsert(StyleReviewVO vo) {
		System.out.println("서비스 styleInsert 확인");
		 boardDao.styleInsert(vo);
	}//end of styleInsert
	
	//style 게시판 수정
	public void styleUpdate(StyleReviewVO vo) {
		System.out.println("서비스 styleUpdate 확인");
		boardDao.styleUpdate(vo);
	}//end of styleUpdate
	
	// Qna상품목록 게시물 총 갯수
	public int listCount(QnaVO vo) {
		return boardDao.listCount(vo);
	}//end of listCount
	
	
	// Free 상품목록 게시물 총 갯수
	public int listCount1(FreeVO vo) {
			return boardDao.listCount1(vo);
	}//end of listCount1
	
	
	// style 상품목록 게시물 총 갯수
	public int listCount2(StyleReviewVO vo) {
				return boardDao.listCount2(vo);
	}//end of listCount2
	
		
	//qna 게시판 답글 보기 
	public QnaVO qnaAnswer(QnaVO vo) {
		System.out.println("서비스 qnaAnswer 요청 완료");
		return boardDao.qnaAnswer(vo);
	}//end of qnaAnswer
	
	//qna 게시판 답글 등록
	public void qnaWrite(QnaVO vo) {
		System.out.println("서비스 styleInsert 확인");
		 boardDao.qnaWrite(vo);
	}//end of styleInsert
	


}
