package com.khyuna0.mProject.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping (value = "/bWrite")
	public String bWrite() {
		
		return "board/bWrite";
	}
	
	@RequestMapping (value = "/bList")
	public String bList() {
		
		return "board/bList";
	}
}
