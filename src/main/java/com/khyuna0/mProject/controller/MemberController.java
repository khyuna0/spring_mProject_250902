package com.khyuna0.mProject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.khyuna0.mProject.dao.MemberDao;
import com.khyuna0.mProject.dto.MemberDto;

@Controller
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	
	MemberDto memberDto = new MemberDto();
	
	@RequestMapping (value = "/index")
	public String index(HttpServletRequest request, Model model) {
		
		return "index";
	}
	
	@RequestMapping (value = "/joinForm")
	public String joinForm(HttpServletRequest request, Model model) {
		return "joinForm";
	}
	
	@RequestMapping (value = "/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		String mname = request.getParameter("membername");
		int age = Integer.parseInt(request.getParameter("memberage"));
		String memail = request.getParameter("memberemail");
		int r1 = memberDao.joinIdCheckDao(mid);
		int r2 =memberDao.joinEmailCheckDao(memail);
		if(r1 == 1) { // 아이디 중복 존재 
			model.addAttribute("msg", "이미 존재하는 아이디 입니다!");
			model.addAttribute("url", "joinForm");
			return "alert/alert";
		} else if (r2 == 1) { // 이메일 중복 존재
			model.addAttribute("msg", "이미 존재하는 이메일 입니다!");
			model.addAttribute("url", "joinForm");
			return "alert/alert";
		} 
			memberDao.joinDao(mid, mpw, age, mname, memail);
			
		return "index";
	}
	
	@RequestMapping (value = "/login")
	public String login(HttpServletRequest request, Model model) {

		return "login";
	}

	@RequestMapping (value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		int result = memberDao.loginDao(mid, mpw);
		System.out.println(result);
		if( result == 1) { // 로그인 성공
			session.setAttribute("sessionId", mid);
			return "index";
		} else {
			model.addAttribute("msg", "아이디 혹은 비밀번호가 일치하지 않습니다.");
			model.addAttribute("url", "login");
			
			return "alert/alert";
		}
	}
	
	@RequestMapping (value = "/myPage")
	
	public String myPage(HttpServletRequest request, Model model, HttpSession session) {
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		String mid = (String) session.getAttribute("sessionId");
		if (session.getAttribute("sessionId") != null ) { // 로그인중
			System.out.println(mid);
			memberDto = memberDao.myPageViewDao(mid);
			model.addAttribute("memberDto", memberDto);
		} else {
			model.addAttribute("msg", "로그아웃 상태에서 접근할 수 없는 페이지입니다.");
			model.addAttribute("url", "login");	
			return "alert/alert";
		}

		return "myPage";
	}
	
	@RequestMapping (value = "/modifyOk")
	public String modifyOk(HttpServletRequest request, Model model) {
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		String mid = request.getParameter("memberid");
		String mpw = request.getParameter("memberpw");
		String mname = request.getParameter("membername");
		int age = Integer.parseInt(request.getParameter("memberage"));

		memberDao.myPageModifyDao(mpw, age, mname, mid);
		model.addAttribute("memberDto", memberDto);
		
		return "redirect:myPage";
	}
	
	@RequestMapping (value = "/logout")
	public String logout(HttpServletRequest request, Model model, HttpSession session) {
		
		session.invalidate();
		model.addAttribute("msg", "로그아웃 되었습니다.");
		model.addAttribute("url", "index");	
		return "alert/alert";
	}
	
}

