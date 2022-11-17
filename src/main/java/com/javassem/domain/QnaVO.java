package com.javassem.domain;

public class QnaVO {
	
		//QnA 게시판 VO

		int q_id;     		//qna 게시판 아이디
		String g_cid; 		//게시판 아이디번호
		String m_id;  		//회원 아이디
		String q_title;  	//qna게시판 제목
		String q_message; 	//qna 게시판 내용
		String q_date;   		//작성날짜
		String q_pass; 		//qna게시판 패스워드
		int q_cnt; 			//qna게시판 조회수
		
		
		//setter,getter
		public int getQ_id() {
			return q_id;
		}
		public void setQ_id(int q_id) {
			this.q_id = q_id;
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
		public String getQ_title() {
			return q_title;
		}
		public void setQ_title(String q_title) {
			this.q_title = q_title;
		}
		public String getQ_message() {
			return q_message;
		}
		public void setQ_message(String q_message) {
			this.q_message = q_message;
		}
		public String getQ_date() {
			return q_date;
		}
		public void setQ_date(String date) {
			this.q_date = date;
		}
		public String getQ_pass() {
			return q_pass;
		}
		public void setQ_pass(String q_pass) {
			this.q_pass = q_pass;
		}
		public int getQ_cnt() {
			return q_cnt;
		}
		public void setQ_cnt(int q_cnt) {
			this.q_cnt = q_cnt;
		}
		@Override
		public String toString() {
			return "QnaVO [q_id=" + q_id + ", g_cid=" + g_cid + ", m_id=" + m_id + ", q_title=" + q_title
					+ ", q_message=" + q_message + ", q_date=" + q_date + ", q_pass=" + q_pass + ", q_cnt=" + q_cnt
					+ "]";
		}
		
		
	
}
