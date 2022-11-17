package com.javassem.dao;
  
 import java.util.List;
  
  import org.mybatis.spring.SqlSessionTemplate; 
  import org.springframework.beans.factory.annotation.Autowired; 
  import org.springframework.stereotype.Repository;

import com.javassem.domain.FreeVO;
import com.javassem.domain.QnaVO;
  
@Repository
public class BoardDaoImpl implements BoardDao {
  
  @Autowired 
  private SqlSessionTemplate mybatis;
  
  //qna 게시판 목록 
  public List<QnaVO> qnaList(QnaVO vo) { 
	  System.out.println("===> Mybatis 다오 qnaList() 호출"); 
	return mybatis.selectList("board.qnaList"); 
  }//end of qnaList
  
  //free 게시판 목록 
  public List<FreeVO> freeList(FreeVO vo){
	  System.out.println("===> Mybatis 다오 freeList() 호출"); 
	return mybatis.selectList("board.freeList"); 
	  
  }//end of freeList
  
  
  }
 