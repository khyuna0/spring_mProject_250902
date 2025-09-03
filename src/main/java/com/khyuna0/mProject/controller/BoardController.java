package com.khyuna0.mProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.khyuna0.mProject.dao.BoardDao;
import com.khyuna0.mProject.dao.MemberDao;
import com.khyuna0.mProject.dto.BoardDto;

@Controller
@RequestMapping(value = "/board")
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;
	
	BoardDto boardDto = new BoardDto();
	
	@RequestMapping (value = "/bList")
	public String bList(HttpServletRequest request, Model model) {
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		int count = boardDao.boardCountDao();
		int page = 1; //기본값
		int pageSize = 10;
		int pageGroupSize = 10;
		
		if(request.getParameter("page") != null ) { // 페이지 선택함
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		int startRow = (page * pageGroupSize) - 9;// 페이지 그룹(pageGroupSize)의 첫 번째 페이지 -> 페이지 그룹이 1 일때 1 , 2일 때 11, 3일 때 21 ...
		int endRow = page * pageSize;
		
		List<BoardDto> boardList = boardDao.boardListDao(startRow, endRow);
		model.addAttribute("boardList", boardList);
		
		int startPage =  ((page-1)/ pageGroupSize ) * pageGroupSize + 1;
		int endPage = startPage + pageGroupSize - 1 ; // 페이지 그룹(pageGroupSize)의 마지막 페이지 -> 페이지 그룹이 1 일때 10 , 2일 때 20, 3일 때 30 ... 
		int totalPage = (int) Math.ceil((double) count /pageSize);
		
		if( endPage > totalPage ) {
			endPage = totalPage;
		}
		
		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("count", count);

		
		return "board/bList";
	}
	
	@RequestMapping (value = "/bWrite")
	public String bWrite(HttpServletRequest request, Model model) {

		return "board/bWrite";
	}
	

	@RequestMapping (value = "/bWriteOk")
	public String bWriteOk(HttpServletRequest request, Model model) {
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bwriter = request.getParameter("bwriter");
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardWriteDao(btitle, bcontent, bwriter);
		
		return "redirect:bList";
	}
	
	@RequestMapping (value = "/bView")
	public String bView(HttpServletRequest request, Model model) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardHitDao(bnum);
		boardDto = boardDao.boardViewDao(bnum);
		
		model.addAttribute("boardDto", boardDto);
		return "board/bView";
	}
	
	@RequestMapping (value = "/bModify")
	public String bModify(HttpServletRequest request, Model model) {
		
		return "board/bModify";
	}
	
	@RequestMapping (value = "/bModifyOk")
	public String bModifyOk(HttpServletRequest request, Model model) {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardModifyDao(bnum,btitle,bcontent);
		
		return "redirect:bView";
	}
	
	@RequestMapping (value = "/bDelete")
	public String bDelete(HttpServletRequest request, Model model) {
		
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardDeleteDao(bnum);

		return "redirect:bList";
	}
}
