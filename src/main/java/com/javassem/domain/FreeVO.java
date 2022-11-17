package com.javassem.domain;

public class FreeVO {
	
	//Free 게시판 VO

	int f_id;    	  //free 게시판 아이디
	String g_cid; 	  //게시판 아이디
	String m_id;  	  // 회원 아이디
	String f_title;   //free 게시판 제목
	String f_message; //free 게시판 내용
	String f_date;	  //free 게시판 작성일짜
	String f_pass;	  //free 게시판 패스워드
	int f_cnt;		  //free 게시판 조회수
	
	//setter, getter
	public int getF_id() {
		return f_id;
	}
	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
	public String getG_cid() {
		return g_cid;
	}
	public void setG_cid(String g_cid) {
		this.g_cid = g_cid;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getF_message() {
		return f_message;
	}
	public void setF_message(String f_message) {
		this.f_message = f_message;
	}
	public String getF_date() {
		return f_date;
	}
	public void setF_date(String f_date) {
		this.f_date = f_date;
	}
	public String getF_pass() {
		return f_pass;
	}
	public void setF_pass(String f_pass) {
		this.f_pass = f_pass;
	}
	public int getF_cnt() {
		return f_cnt;
	}
	public void setF_cnt(int f_cnt) {
		this.f_cnt = f_cnt;
	}
	
	
	
	
	
	
}
