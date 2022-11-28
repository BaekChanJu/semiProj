package com.javassem.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class ppVO {

	private int totalCount; //총 레코드 갯수
	private int startPage;  //시작페이지
	private int endPage;    //끝나는 페이지
	private boolean prev;   //앞으로버튼
	private boolean next;   //뒤로버튼
	private int displayPageNum = 5; //페이지숫자 
	private QnaVO vo;  // 연결할vo
	
	//setCri변수에 QnaVO를 넣는다	
	public void setCri(QnaVO vo) {
		this.vo = vo;
	}
	
	//setTotalCount에 총갯수를 넣는다
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean isPrev() {
		return prev;
	}
	
	public boolean isNext() {
		return next;
	}
	
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	
	public QnaVO getCri() {
		return vo;
	}
	
	//
	private void calcData() {
		endPage = (int) (Math.ceil(vo.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
	  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)vo.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		prev = startPage == 1 ? false : true;
		next = endPage * vo.getPerPageNum() >= totalCount ? false : true;
	}
	
	
	
	
	public String makeQuery(int page) {
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("page", page)
							.queryParam("perPageNum", vo.getPerPageNum())
							.build();
		   
		return uriComponents.toUriString();
	}
	
	
}