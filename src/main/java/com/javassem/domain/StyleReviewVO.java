package com.javassem.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class StyleReviewVO {

	//StyleReview 게시판 VO
	
	int s_id;   		//StyleReview 게시판 아이디
	String g_cid; 		//게시판 아이디
	String m_id;  		//회원 아이디
	String s_title;		//StyleReview 게시판 제목
	String s_message; 	//StyleReview 게시판 내용
	String s_date;		//StyleReview 게시판 작성날짜
	String s_pass;		//StyleReview 게시판 패스워드
	int s_cnt; 			//StyleReview 게시판 조회수
	String s_img; 		//StyleReview 게시판 착용샷 이미지
	
	
	MultipartFile file1;
	
	public MultipartFile getFile1() {
		return file1;
	}
	
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
		
		if (!file1.isEmpty()) {

			this.s_img = file1.getOriginalFilename();
			

			UUID uuid = UUID.randomUUID();
			this.s_img = uuid.toString() + "_" + s_img;

			File f = new File("D:\\springweb\\semiProject\\src\\main\\webapp\\resources\\images\\upload\\" + s_img);
			

			try {
				file1.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	//setter,getter
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
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
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public String getS_message() {
		return s_message;
	}
	public void setS_message(String s_message) {
		this.s_message = s_message;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getS_pass() {
		return s_pass;
	}
	public void setS_pass(String s_pass) {
		this.s_pass = s_pass;
	}
	public int getS_cnt() {
		return s_cnt;
	}
	public void setS_cnt(int s_cnt) {
		this.s_cnt = s_cnt;
	}
	public String getS_img() {
		return s_img;
	}
	public void setS_img(String s_img) {
		this.s_img = s_img;
	}
	
	
	
}
