package com.javassem.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javassem.service.SalesService;

@Controller
public class SalesController {
	
	@Autowired
	private SalesService salesService;
	
	@ResponseBody 
	@RequestMapping("sales/{year}") 
	public List<Map<String,Object>> getSalesByYear(@PathVariable String year){
		return salesService.getSalesListBy(year); 
	} 

}
