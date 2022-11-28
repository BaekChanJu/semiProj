package com.javassem.domain;

public class BuyVO {
	
	// 화면에서 전달 받을 값 
	private String	g_Id;
	private int		c_Cnt;
	

	private String 	g_Name;
	private int		g_Price;
	private String	m_Name;
	private String  m_Email;
	private String	m_Tell;
	private int		m_Num;		// 우편번호
	private String  m_Addr;		// 기본주소
	private String	m_SubAddr;	// 상세주소
	private String  m_Id;
	private String  delivery;
	private String  cancel;

	private int totalPrice;		// 총 가격
	private String b_Id;		// 주문 고유번호
	private String b_Date;		// 주문 날짜

	
	
	//setter getter
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

	public String getM_SubAddr() {
		return m_SubAddr;
	}

	public void setM_SubAddr(String m_Subaddr) {
		this.m_SubAddr = m_Subaddr;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getB_Id() {
		return b_Id;
	}

	public void setB_Id(String b_Id) {
		this.b_Id = b_Id;
	}
	
	

	public String getM_Addr() {
		return m_Addr;
	}

	public void setM_Addr(String m_Addr) {
		this.m_Addr = m_Addr;
	}
	
	

	public String getM_Id() {
		return m_Id;
	}

	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}

	public String getB_Date() {
		return b_Date;
	}

	public void setB_Date(String b_Date) {
		this.b_Date = b_Date;
	}

	public void initSaleTotal() {
		this.totalPrice = this.g_Price*this.c_Cnt;
	}
	

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getCancel() {
		return cancel;
	}

	public void setCancel(String cancel) {
		this.cancel = cancel;
	}

	@Override
	public String toString() {
		return "BuyVO [g_Id=" + g_Id + ", c_Cnt=" + c_Cnt + ", g_Name=" + g_Name + ", g_Price=" + g_Price + ", m_Name="
				+ m_Name + ", m_Email=" + m_Email + ", m_Tell=" + m_Tell + ", m_Num=" + m_Num + ", m_Addr=" + m_Addr
				+ ", m_SubAddr=" + m_SubAddr + ", m_Id=" + m_Id + ", delivery=" + delivery + ", cancel=" + cancel
				+ ", totalPrice=" + totalPrice + ", b_Id=" + b_Id + ", b_Date=" + b_Date + "]";
	}

	

	

	


	

	




	
	
	

}
