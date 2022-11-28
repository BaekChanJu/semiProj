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
		String o_message;
		
		private int page; //페이지
		private int perPageNum; //한페이지당 출력할 레코드 갯수
		private int rowStart; //시작하는 숫자
		private int rowEnd; //끝나는 숫자
		
		public QnaVO() {
			this.page = 1;
			this.perPageNum = 6;
		}
		
		public void setPage(int page) {
			if (page <= 0) {
				this.page = 1;
				return;
			}
			this.page = page;
		}
		
		public void setPerPageNum(int perPageNum) {
			if (perPageNum <= 0 || perPageNum > 100) {
				this.perPageNum = 6;
				return;
			}
			this.perPageNum = perPageNum;
		}
		
		public int getPage() {
			return page;
		}
		
		public int getPageStart() {
			return (this.page - 1) * perPageNum;
		}
		
		public int getPerPageNum() {
			return this.perPageNum;
		}
		
		public int getRowStart() {
			rowStart = ((page - 1) * perPageNum) + 1;
			return rowStart;
		}
		
		public int getRowEnd() {
			rowEnd = rowStart + perPageNum - 1;
			return rowEnd;
		}
		
		
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
		
		
		public String getO_message() {
			return o_message;
		}

		public void setO_message(String o_message) {
			this.o_message = o_message;
		}

		@Override
		public String toString() {
			return "QnaVO [q_id=" + q_id + ", g_cid=" + g_cid + ", m_id=" + m_id + ", q_title=" + q_title
					+ ", q_message=" + q_message + ", q_date=" + q_date + ", q_pass=" + q_pass + ", q_cnt=" + q_cnt
					+ "]";
		}
		
		
	
}
