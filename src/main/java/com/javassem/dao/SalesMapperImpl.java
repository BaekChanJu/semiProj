package com.javassem.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SalesMapperImpl implements SalesMapper {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	@Override
	public List<Map<String, Object>> getSalesListBy(String year) {
		
		return mybatis.selectList("SalesVO.getSalesListBy",year);
	}

}
