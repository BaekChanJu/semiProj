package com.javassem.domain;

public class OrderDetailsVO {

	private int orderDetailsNum;
	private String b_Id;
	private int	c_Cnt;
	private String g_Id;
	
	// setter getter
	
	public int getOrderDetailsNum() {
		return orderDetailsNum;
	}
	public void setOrderDetailsNum(int orderDetailsNum) {
		this.orderDetailsNum = orderDetailsNum;
	}
	public String getB_Id() {
		return b_Id;
	}
	public void setB_Id(String b_Id) {
		this.b_Id = b_Id;
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
	@Override
	public String toString() {
		return "OrderDetails [orderDetailsNum=" + orderDetailsNum + ", b_Id=" + b_Id + ", c_Cnt=" + c_Cnt + ", g_Id="
				+ g_Id + "]";
	}
	
	
}
