package com.javassem.domain;

//1117
//회원가입시 고객정보를 담은 VO 컬럼명과 변수명 동일하게 설정했습니다!
public class MemberVO {
	private String m_Id; //회원아이디
	private String m_Pass;//비밀번호
	private String m_Email;//이메일
	private String m_Name;//회원이름
	private String m_Tell;//전화번호
	private String m_Num;//우편번호
	private String m_Addr;//주소
	private String m_SubAddr;//상세주소
	
	
	//기본생성자
	public MemberVO() {
		
	}
	

	//인자있는생성자
	public MemberVO(String m_Id, String m_Pass, String m_Email, String m_Name, String m_Tell, String m_Num,
			String m_Addr, String m_SubAddr) {
		super();
		this.m_Id = m_Id;
		this.m_Pass = m_Pass;
		this.m_Email = m_Email;
		this.m_Name = m_Name;
		this.m_Tell = m_Tell;
		this.m_Num = m_Num;
		this.m_Addr = m_Addr;
		this.m_SubAddr = m_SubAddr;
	}
	
	
	//셋게터들
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public String getM_Pass() {
		return m_Pass;
	}
	public void setM_Pass(String m_Pass) {
		this.m_Pass = m_Pass;
	}
	public String getM_Email() {
		return m_Email;
	}
	public void setM_Email(String m_Email) {
		this.m_Email = m_Email;
	}
	public String getM_Name() {
		return m_Name;
	}
	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}
	public String getM_Tell() {
		return m_Tell;
	}
	public void setM_Tell(String m_Tell) {
		this.m_Tell = m_Tell;
	}
	public String getM_Num() {
		return m_Num;
	}
	public void setM_Num(String m_Num) {
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


	@Override
	public String toString() {
		return "MemberVO [m_Id=" + m_Id + ", m_Pass=" + m_Pass + ", m_Email=" + m_Email + ", m_Name=" + m_Name
				+ ", m_Tell=" + m_Tell + ", m_Num=" + m_Num + ", m_Addr=" + m_Addr + ", m_SubAddr=" + m_SubAddr + "]";
	}
	
	

}
