package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; import
org.springframework.stereotype.Service;

import com.javassem.dao.BoardDao; import com.javassem.dao.BoardDaoImpl;
import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StyleReviewVO;

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

}
