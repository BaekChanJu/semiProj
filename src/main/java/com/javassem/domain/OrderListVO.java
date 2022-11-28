package com.javassem.domain;

public class OrderListVO {
	
	private String b_Id;
	private String  m_Id;
	private String	m_Name;
	private String  m_Email;
	private String	m_Tell;
	private int		m_Num;		// 우편번호
	private String  m_Addr;		// 기본주소
	private String	m_SubAddr;	// 상세주소
	private String  b_Date;		// 주문 날짜
	private int totalPrice;		// 총 가격
	private String  delivery;

	private int orderDetailsNum;
	private int	c_Cnt;
	private String g_Id;

	private String g_Name;
	private String	gl_Img1;
	private String g_Price;
	
	// setter getter
	public String getB_Id() {
		return b_Id;
	}
	public void setB_Id(String b_Id) {
		this.b_Id = b_Id;
	}
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public String getM_Name() {
		return m_Name;
	}
	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}
	public String getM_Email() {
		return m_Email;
	}
	public void setM_Email(String m_Email) {
		this.m_Email = m_Email;
	}
	public String getM_Tell() {
		return m_Tell;
	}
	public void setM_Tell(String m_Tell) {
		this.m_Tell = m_Tell;
	}
	public int getM_Num() {
		return m_Num;
	}
	public void setM_Num(int m_Num) {
		this.m_Num = m_Num;
	}
	public String getM_Addr() {
		return m_Addr;
	}
	public void setM_Addr(String m_Addr) {
		this.m_Addr = m_Addr;
	}
	public String getM_SubAddr() {
		return m_SubAddr;
	}
	public void setM_SubAddr(String m_SubAddr) {
		this.m_SubAddr = m_SubAddr;
	}
	public String getB_Date() {
		return b_Date;
	}
	public void setB_Date(String b_Date) {
		this.b_Date = b_Date;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getOrderDetailsNum() {
		return orderDetailsNum;
	}
	public void setOrderDetailsNum(int orderDetailsNum) {
		this.orderDetailsNum = orderDetailsNum;
	}
	public int getC_Cnt() {
		return c_Cnt;
	}
	public void setC_Cnt(int c_Cnt) {
		this.c_Cnt = c_Cnt;
	}
	public String getG_Id() {
		return g_Id;
	}
	public void setG_Id(String g_Id) {
		this.g_Id = g_Id;
	}
	public String getG_Name() {
		return g_Name;
	}
	public void setG_Name(String g_Name) {
		this.g_Name = g_Name;
	}
	public String getGl_Img1() {
		return gl_Img1;
	}
	public void setGl_Img1(String gl_Img1) {
		this.gl_Img1 = gl_Img1;
	}
	public String getG_Price() {
		return g_Price;
	}
	public void setG_Price(String g_Price) {
		this.g_Price = g_Price;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	@Override
	public String toString() {
		return "OrderListVO [b_Id=" + b_Id + ", m_Id=" + m_Id + ", m_Name=" + m_Name + ", m_Email=" + m_Email
				+ ", m_Tell=" + m_Tell + ", m_Num=" + m_Num + ", m_Addr=" + m_Addr + ", m_SubAddr=" + m_SubAddr
				+ ", b_Date=" + b_Date + ", totalPrice=" + totalPrice + ", delivery=" + delivery + ", orderDetailsNum="
				+ orderDetailsNum + ", c_Cnt=" + c_Cnt + ", g_Id=" + g_Id + ", g_Name=" + g_Name + ", gl_Img1="
				+ gl_Img1 + ", g_Price=" + g_Price + "]";
	}
	
	




	
	
	

}
