package com.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.FreeVO;
import com.javassem.domain.GoodsVO;
import com.javassem.domain.PagingVO;
import com.javassem.domain.QnaVO;
import com.javassem.domain.StylePPVO;
import com.javassem.domain.StyleReviewVO;
import com.javassem.domain.freeppVO;
import com.javassem.domain.ppVO;
import com.javassem.service.BoardService;

@Controller//게시판 컨트롤러
public class BoardController {

	@Autowired 
	private BoardService boardSerice ;//boardService를 임포트 한다

	//QNA게시판 목록 
	@RequestMapping(value={"qnA.do","qnaanswer.do"}) 
	public void qnaList (Model m, QnaVO vo) {
		System.out.println(" -- 컨트롤 qna 요청완료 ---"+vo);

		List<QnaVO> list = boardSerice.qnaList(vo);
		m.addAttribute("qnA", list);  
		
		//qna 게시판 페이징 구문
		ppVO pageMaker = new ppVO();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(boardSerice.listCount(vo));
		System.out.println("listCount확인:" +boardSerice.listCount(vo));
		m.addAttribute("pageMaker", pageMaker);
		
	}//end of qnaList

	//free게시판 목록 
	@RequestMapping("free")
	public void freeList(Model m,FreeVO vo) {
		System.out.println(" -- 컨트롤 free 요청완료 ---"+vo);

		List<FreeVO> list = boardSerice.freeList(vo);
		m.addAttribute("free", list); 
		System.out.println("list:"+list);
		
		//free 게시판 페이징 구문
		freeppVO pageMaker = new freeppVO();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(boardSerice.listCount1(vo));
		System.out.println("listCount확인:" +boardSerice.listCount1(vo));
		m.addAttribute("pageMaker", pageMaker);
	}//end of freeList

	

	//qna게시판 등록
	@PostMapping("writeon")
	public String qnaInsert(QnaVO vo) {
		System.out.println(" -- 컨트롤 qnaInsert 요청완료 ---:"+vo );
		boardSerice.qnaInsert(vo);  
		System.out.println(" -- 컨트롤 qnaInsert 요청완료 ---");
		return "redirect:qnA.do";
	}//end of qnaInsert

	//free게시판 등록
	@PostMapping("writeon1") 
	public String freeInsert(FreeVO vo) {
		System.out.println(" -- 컨트롤 qnaInsert 요청완료 ---:"+vo );
		//free 게시판 
		boardSerice.freeInsert(vo); 
		System.out.println(" -- 컨트롤 qnaInsert 요청완료 ---");
		//free.do 컨트롤러 호출
		return "redirect:free.do";
	}//end of qnaInsert

	//QNA게시판 상세보기
	@RequestMapping(value={"/qnalist.do","qnalistadmin.do"}) 
	public void qnaList1 (QnaVO vo,Model m) {
	System.out.println(" -- 컨트롤 qna 요청완료 ---");
	//qna 게시판 상세출력 구문
	QnaVO result = boardSerice.qnaDetail(vo);
	//qna 게시판 관리자 답글 출력 구문
	QnaVO answers = boardSerice.qnaAnswer(vo);
	//qna 게시판 상세출력 구문
	m.addAttribute("qnadetail", result);
	//qna 게시판 관리자 답글 출력 구문
	m.addAttribute("qnadetail1",answers );
	}//end of qnaList

	//QnA게시판 삭제
	@RequestMapping(value={"qnadelete",""})
	public String qnaDelete(QnaVO vo) {
		System.out.println("컨트롤 qnaDelete 요청완료");
		//qna 게시판 관리자 답글 삭제
		boardSerice.orderdelete(vo);
		//qna 게시판 글 삭제
		boardSerice.qnaDelete(vo);
		return "redirect:qnA.do";
	}//end of qnaDelete
	
	//QnA게시판 수정
	@RequestMapping("qnadmodi")
	public String qnaUpdate(QnaVO vo) {
		System.out.println("컨트롤 qnaUpdate 요청완료: " + vo);
		//qna 게시판 글 수정
		boardSerice.qnaUpdate(vo);
		//qna 게시판 컨트롤러 호출 
		return "redirect:qnA.do";
	}//end of qnaUpdate
	
	//Free 게시판 상세보기
	@RequestMapping("freelist")
	public void freeDetail(FreeVO vo,Model m) {
	System.out.println("컨트롤 freeDetail 요청완료 :" +vo);
	//free 게시판 상세 보기 구문
	FreeVO result =	boardSerice.freeDetail(vo);
	//freedetail에 값 넣어서 날리는 구문
	m.addAttribute("freedetail",result);
	}//end of freeDetail
	
	//Free 게시판 삭제
	@RequestMapping("freedelete")
	public String freeDelete(FreeVO vo) {
		System.out.println("컨트롤 freeDelete 요청완료 :"+vo);
		//free 게시판 삭제 구문
		boardSerice.freeDelete(vo);
		//free 게시판 컨트롤러 호출
		return "redirect:free.do";
	}//end of freeDelete
	
	//Free 게시판 수정
	@RequestMapping(value={"freemodi","qnaup"})
	public String freeUpdate(FreeVO vo) {
		System.out.println("컨트롤 freeUpdate 요청완료 :"+vo);
		//free게시판 수정 구문
		boardSerice.freeUpdate(vo);
		System.out.println("컨트롤 freeUpdate 요청완료 :"+vo);
		//free 게시판 컨트롤러 호출
		return "redirect:free.do";
	}//end of freeUpdate
	
	//style 게시판 목록
	@RequestMapping("styleReview.do")
	public void goodsList(StyleReviewVO vo, Model model) {
		System.out.println("컨트롤 sytlelist 요청완료 :" + vo);
		//style 게시판 목록 구문
		model.addAttribute("style", boardSerice.sytlelist(vo));
		//style 게시판 페이징 구문
		StylePPVO pageMaker = new StylePPVO();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(boardSerice.listCount2(vo));
		System.out.println("listCount확인:" +boardSerice.listCount2(vo));
		model.addAttribute("pageMaker", pageMaker);
	}//end of goodsList
	
	//style 게시판 상세보기
	@RequestMapping("styleReviewList")
	public void styledetail(StyleReviewVO vo,Model m) {
		System.out.println("컨트롤 styledetail 요청완료"+vo);
		//style 게시판 상세보기 구문
		StyleReviewVO result =	boardSerice.styledetail(vo);
		m.addAttribute("style",result);
	}//end of styledetail
	
	//style 게시판 등록
	@RequestMapping("styleInsert")
	public String styleInsert(StyleReviewVO vo) {
		System.out.println("컨트롤 styleInsert() 요청완료" +vo);
		//style 게시판 등록 구문
		boardSerice.styleInsert(vo);
		//stylereview 컨트롤러 호출
		return "redirect:styleReview.do";
	}//end of styleInsert
	
	//style 게시판 수정
	@RequestMapping("styleUpdate")
	public String styleUpdate(StyleReviewVO vo) {
		System.out.println("컨트롤 styleUpdate() 요청완료" +vo);
		//style 게시판 수정
		boardSerice.styleUpdate(vo);
		//stylereview 컨트롤러 호출
		return "redirect:styleReview.do";
	}//end of styleUpdate
	
	//style 게시판 삭제
	@RequestMapping("styledelete")
	public String styleDelete(StyleReviewVO vo) {
		System.out.println("컨트롤 styleDelete 요청완료 :"+vo);
		//style 게시판 삭제 구문
		boardSerice.styleDelete(vo);
		//style 게시판 컨트롤러 호출
		return "redirect:styleReview.do";
	}//end of freeDelete
	
	//관리자 QnA게시판 삭제
	@RequestMapping("qnadelete1")
	public String qnaDelete1(QnaVO vo) {
			System.out.println("컨트롤 qnaDelete 요청완료");
			//관리자 qna 게시판 답글 삭제
			boardSerice.orderdelete(vo);
			//관리자 qna 게시판 본문 삭제
			boardSerice.qnaDelete(vo);
			//관리자 qna게시판 컨트롤러 호출
			return "redirect:qnaanswer.do";
	}//end of qnaDelete
		
	//관리자 qna 게시판 답변 등록
	@RequestMapping("qnaadmin")
	public String qnaWrite(QnaVO vo) {
			System.out.println("컨트롤 qnaWrite 요청완료");
			boardSerice.qnaWrite(vo);
			return "redirect:qnaanswer.do";
	}
		
	//관리자 QnA게시판 수정
	@RequestMapping("qnaup.do")
	public String qnaUpdate1(QnaVO vo) {
			System.out.println("컨트롤 qnaUpdate 요청완료: " + vo);
			boardSerice.orderupdate(vo);
			return "redirect:qnaanswer.do";
	}//end of qnaUpdate
		
	
}
 