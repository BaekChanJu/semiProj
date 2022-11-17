package com.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.MemberVO;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("===>  MemberMapper joinInput마이바티즈 호출");
		return mybatis.insert("member.joinInput", vo);
	}
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("member.idCheck", vo);
	}
	
	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> MemberMapper idCheck 호출");
		return mybatis.selectOne("member.idCheck", vo);
	}
	
	@Override
	public MemberVO selectCheck(MemberVO vo) {
		
		return mybatis.selectOne("member.selectCheck", vo);
	}

}
