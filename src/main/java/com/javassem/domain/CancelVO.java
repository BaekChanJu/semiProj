package com.javassem.domain;

public class CancelVO {
	
	private String b_Id;
	private String can_Id;
	private String can_Message1;
	private String can_Message2;
	
	// setter getter
	public String getB_Id() {
		return b_Id;
	}
	public void setB_Id(String b_Id) {
		this.b_Id = b_Id;
	}
	public String getCan_Id() {
		return can_Id;
	}
	public void setCan_Id(String can_Id) {
		this.can_Id = can_Id;
	}
	public String getCan_Message1() {
		return can_Message1;
	}
	public void setCan_Message1(String can_Message1) {
		this.can_Message1 = can_Message1;
	}
	public String getCan_Message2() {
		return can_Message2;
	}
	public void setCan_Message2(String can_Message2) {
		this.can_Message2 = can_Message2;
	}
	
	
	@Override
	public String toString() {
		return "cancelVO [b_Id=" + b_Id + ", can_Id=" + can_Id + ", can_Message1=" + can_Message1 + ", can_Message2="
				+ can_Message2 + "]";
	}
	
	
	
	

}