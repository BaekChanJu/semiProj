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
	private BoardService boardSerice ;

	//QNA게시판 목록 
	@RequestMapping("/qnA.do") 
	public void qnaList (Model m, QnaVO vo) {
		System.out.println(" -- 컨트롤 qna 요청완료 ---"+vo);

		List<QnaVO> list = boardSerice.qnaList(vo);
		m.addAttribute("qnA", list);  
		
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
		boardSerice.freeInsert(vo); 
		System.out.println(" -- 컨트롤 qnaInsert 요청완료 ---");
		return "redirect:free.do";
	}//end of qnaInsert

	//QNA게시판 상세보기
	@RequestMapping("/qnalist.do") 
	public void qnaList1 (QnaVO vo,Model m) {
		System.out.println(" -- 컨트롤 qna 요청완료 ---");
	QnaVO result = boardSerice.qnaDetail(vo);
	QnaVO answers = boardSerice.qnaAnswer(vo);
	m.addAttribute("qnadetail", result);
	m.addAttribute("qnadetail1",answers );
	//
	}//end of qnaList

	//QnA게시판 삭제
	@RequestMapping("qnadelete")
	public String qnaDelete(QnaVO vo) {
		System.out.println("컨트롤 qnaDelete 요청완료");
		boardSerice.qnaDelete(vo);
		return "redirect:qnA.do";
	}//end of qnaDelete
	
	//QnA게시판 수정
	@RequestMapping("qnadmodi")
	public String qnaUpdate(QnaVO vo) {
		System.out.println("컨트롤 qnaUpdate 요청완료: " + vo);
		boardSerice.qnaUpdate(vo);
		return "redirect:qnA.do";
	}//end of qnaUpdate
	
	//Free 게시판 상세보기
	@RequestMapping("freelist")
	public void freeDetail(FreeVO vo,Model m) {
		System.out.println("컨트롤 freeDetail 요청완료 :" +vo);
	FreeVO result =	boardSerice.freeDetail(vo);
	m.addAttribute("freedetail",result);
	}//end of freeDetail
	
	//Free 게시판 삭제
	@RequestMapping("freedelete")
	public String freeDelete(FreeVO vo) {
		System.out.println("컨트롤 freeDelete 요청완료 :"+vo);
		boardSerice.freeDelete(vo);
		return "redirect:free.do";
	}//end of freeDelete
	
	//Free 게시판 수정
	@RequestMapping("freemodi")
	public String freeUpdate(FreeVO vo) {
		System.out.println("컨트롤 freeUpdate 요청완료 :"+vo);
		boardSerice.freeUpdate(vo);
		System.out.println("컨트롤 freeUpdate 요청완료 :"+vo);
		return "redirect:free.do";
	}//end of freeUpdate
	
	//style 게시판 목록
	@RequestMapping("styleReview.do")
	public void goodsList(StyleReviewVO vo, Model model) {
		System.out.println("컨트롤 sytlelist 요청완료 :" + vo);
		model.addAttribute("style", boardSerice.sytlelist(vo));
		
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
	StyleReviewVO result =	boardSerice.styledetail(vo);
		m.addAttribute("style",result);
	}//end of styledetail
	
	//style 게시판 등록
	@RequestMapping("styleInsert")
	public String styleInsert(StyleReviewVO vo) {
		System.out.println("컨트롤 styleInsert() 요청완료" +vo);
		boardSerice.styleInsert(vo);
		return "redirect:styleReview.do";
	}
	
	//style 게시판 수정
	@RequestMapping("styleUpdate")
	public String styleUpdate(StyleReviewVO vo) {
		System.out.println("컨트롤 styleUpdate() 요청완료" +vo);
		boardSerice.styleUpdate(vo);
		return "redirect:styleReview.do";
	}
	
	//qna 게시판 답글 등록
	
	//QNA게시판 목록 
	@RequestMapping("/qnaanswer") 
	public String qnaList1 (Model m, QnaVO vo) {
		System.out.println(" -- 컨트롤 qna 요청완료 ---"+vo);

		List<QnaVO> list = boardSerice.qnaList(vo);
		m.addAttribute("qnA", list);  
		
		ppVO pageMaker = new ppVO();
		pageMaker.setCri(vo);
		pageMaker.setTotalCount(boardSerice.listCount(vo));
		System.out.println("listCount확인:" +boardSerice.listCount(vo));
		m.addAttribute("pageMaker", pageMaker);
		
		return "redirect:qnaanswer.do";
		
		
	}//end of qnaList
	
	
	
}
 