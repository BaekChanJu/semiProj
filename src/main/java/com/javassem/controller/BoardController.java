 package com.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
  
  
  
  
  }
 