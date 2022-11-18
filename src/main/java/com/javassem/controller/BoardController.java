package com.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.FreeVO;
import com.javassem.domain.QnaVO;
import com.javassem.service.BoardService;

@Controller//게시판 컨트롤러
public class BoardController {

	@Autowired 
	private BoardService boardSerice ;

	//QNA게시판 목록
	@RequestMapping("/qnA.do") 
	public void qnaList (Model m) {
		System.out.println(" -- 컨트롤 qna 요청완료 ---");

		QnaVO vo = new QnaVO();
		List<QnaVO> list = boardSerice.qnaList(vo);
		m.addAttribute("qnA", list);  
	}//end of qnaList

	//free게시판 목록 
	@RequestMapping("free")
	public void freeList(Model m) {
		System.out.println(" -- 컨트롤 free 요청완료 ---");

		FreeVO vo = new FreeVO();
		List<FreeVO> list = boardSerice.freeList(vo);
		m.addAttribute("free", list); 
		System.out.println("list:"+list);
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


}
 