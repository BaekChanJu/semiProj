package com.javassem.dao;

import com.javassem.domain.MemberVO;

public interface MemberDao {
	int memberInsert(MemberVO vo);
	
	MemberVO  idCheck( MemberVO vo );
	
	MemberVO memberLogin(MemberVO vo);
	
	
	MemberVO selectCheck(MemberVO vo);

}
