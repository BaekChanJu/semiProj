package com.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.MemberDaoImpl;
import com.javassem.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDaoImpl memberDao;
	
	
	 public int userInsert(MemberVO vo )
	   {
		  return memberDao.memberInsert(vo);
	   }
	 
	 
	 public MemberVO userSelectCheck(MemberVO vo )
	   {
		  return memberDao.selectCheck(vo);
	   }
	 
	 
	 public MemberVO idCheck_Login( MemberVO vo)
	  {
		  return memberDao.idCheck(vo);
	  }
	  
}
