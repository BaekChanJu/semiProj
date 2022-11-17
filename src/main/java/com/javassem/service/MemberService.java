package com.javassem.service;

import com.javassem.domain.MemberVO;

public interface MemberService {

	
	public int userInsert(MemberVO vo);
	
	public MemberVO idCheck_Login( MemberVO vo);
	
	public MemberVO userSelectCheck(MemberVO vo );
}
