package com.javassem.domain;

public class CartVO {
	
	// 카트 변수
	private String c_Id;
	private String g_Id;
	private int c_Cnt;
	private String m_Id;
	
	// 조인을 위한 goods 변수
	
	private String	g_Name;
	private int		g_Price;
	private String  gl_Img1;
	
	// 총금액 변수
	private int totalPrice;

	public String getC_Id() {
		return c_Id;
	}

	public void setC_Id(String c_Id) {
		this.c_Id = c_Id;
	}

	public String getG_Id() {
		return g_Id;
	}

	public void setG_Id(String g_Id) {
		this.g_Id = g_Id;
	}

	public int getC_Cnt() {
		return c_Cnt;
	}

	public void setC_Cnt(int c_Cnt) {
		this.c_Cnt = c_Cnt;
	}

	public String getG_Name() {
		return g_Name;
	}

	public void setG_Name(String g_Name) {
		this.g_Name = g_Name;
	}

	public int getG_Price() {
		return g_Price;
	}

	public void setG_Price(int g_Price) {
		this.g_Price = g_Price;
	}

	public int getTotalPrice() {
		return totalPrice;
	}
	
	// 변수 값을 초기화 하는 메소드
	public void initTotal() {
		this.totalPrice = this.g_Price*this.c_Cnt;
	}
	
	
	


	public String getGl_Img1() {
		return gl_Img1;
	}

	public void setGl_Img1(String gl_Img1) {
		this.gl_Img1 = gl_Img1;
	}

	public String getM_Id() {
		return m_Id;
	}

	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}

	@Override
	public String toString() {
		return "CartVO [c_Id=" + c_Id + ", g_Id=" + g_Id + ", c_Cnt=" + c_Cnt + ", m_Id=" + m_Id + ", g_Name=" + g_Name
				+ ", g_Price=" + g_Price + ", gl_Img1=" + gl_Img1 + ", totalPrice=" + totalPrice + "]";
	}


	

	

	
	
	

}
