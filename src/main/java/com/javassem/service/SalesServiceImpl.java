package com.javassem.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.SalesMapper;




@Service   
public class SalesServiceImpl implements SalesService  {
	
	@Autowired
	private SalesMapper salesMapper;

	  @Override
	  public List<Map<String, Object>> getSalesListBy(String year) { 
		  return salesMapper.getSalesListBy(year);
		  } 
	  
	
}
