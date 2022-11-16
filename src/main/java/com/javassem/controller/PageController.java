package com.javassem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("{url}.do")
	public String userJoin(@PathVariable String url) {
		return url;
	}
	
	/*main폴더 안 카테고리*/
	@RequestMapping("mainAcc.do")
	public String mainACC() {
		return "main/mainAcc";
	}
	@RequestMapping("mainBottom.do")
	public String mainBottom() {
		return "main/mainBottom";
	}
	@RequestMapping("mainOuter.do")
	public String mainOuter() {
		return "main/mainOuter";
	}
	@RequestMapping("mainShoes.do")
	public String mainShoes() {
		return "main/mainShoes";
	}
	@RequestMapping("mainTop.do")
	public String mainTop() {
		return "main/mainTop";
	}
	/*men폴더 안 카테고리*/
	@RequestMapping("manAcc.do")
	public String manACC() {
		return "man/manAcc";
	}
	@RequestMapping("manBottom.do")
	public String manBottom() {
		return "man/manBottom";
	}
	@RequestMapping("manOuter.do")
	public String manOuter() {
		return "man/manOuter";
	}
	@RequestMapping("manShoes.do")
	public String manShoes() {
		return "man/manShoes";
	}
	@RequestMapping("manTop.do")
	public String anTop() {
		return "man/manTop";
	}
	
	/*women폴더 안 카테고리*/
	@RequestMapping("womanAcc.do")
	public String womanACC() {
		return "woman/womanAcc";
	}
	@RequestMapping("womanBottom.do")
	public String womanBottom() {
		return "woman/womanBottom";
	}
	@RequestMapping("womanOuter.do")
	public String womanOuter() {
		return "woman/womanOuter";
	}
	@RequestMapping("womanShoes.do")
	public String womanShoes() {
		return "woman/womanShoes";
	}
	@RequestMapping("womanTop.do")
	public String womanTop() {
		return "woman/womanTop";
	}
	
}
