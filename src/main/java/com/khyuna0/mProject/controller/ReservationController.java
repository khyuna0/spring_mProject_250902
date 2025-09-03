package com.khyuna0.mProject.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.khyuna0.mProject.dao.ReservationDao;
import com.khyuna0.mProject.dto.MemberDto;
import com.khyuna0.mProject.dto.ReservationDto;

@Controller
@RequestMapping(value = "/reservation")
public class ReservationController {
	
	@Autowired
	private SqlSession sqlSession;
	
	ReservationDto reservationDto = new ReservationDto();
	List<MemberDto> memberDto = new ArrayList<MemberDto>();
	
	@RequestMapping (value = "/reservationForm")
	public String reservationForm(HttpServletRequest request, Model model) {
		
		ReservationDao reservationDao = sqlSession.getMapper(ReservationDao.class);
		
		// 전체 예약 목록 조회
		List<ReservationDto> allReservations = reservationDao.findAllReservationsDao();
		
		// 지점
		List<String> locations = new ArrayList<String>();
		locations.add("이대점");
		
		// 예약 호실
		Map<String, List<String>> rooms = new HashMap<String, List<String>>();
		rooms.put("이대점", Arrays.asList("101호","102호","103호","201호","202호"));
		
		// 예약 시간
		List<String> times = new ArrayList<String>();
		for (int hour = 10; hour <= 22; hour += 2) {
			times.add(String.format("%02d:00", hour));
		}
		times.add("24:00"); // 자정

		
		for (ReservationDto r : allReservations) {
			
		    if (r.getRlocation().equals(locations.get(0)) && r.getRdate().equals(rooms.keySet().iterator().next())) {
		        times.remove(r.getRtime());
		        rooms.remove(r.getR_room());
		    }
		}

		model.addAttribute("availableTimes", times);
		model.addAttribute("availableRooms", rooms);
		model.addAttribute("locations", locations);
		
		return "reservation/reservationForm";
	}
	
	@RequestMapping (value = "/reserveOk")
	public String reserveOk(HttpServletRequest request, Model model) {
		ReservationDao reservationDao = sqlSession.getMapper(ReservationDao.class);
		String memberid = request.getParameter("memberid");
		String rlocation = request.getParameter("rlocation");
		String r_room = request.getParameter("r_room");
		String rdate = request.getParameter("rdate");
		String rtime = request.getParameter("rtime");
		
		reservationDao.reservationDao(memberid, rlocation, r_room, rdate, rtime);
		
		return "reservation/rCheck";
	}
	
	@RequestMapping (value = "/rCheck")
	public String rCheck(HttpServletRequest request, Model model, HttpSession session) {
		ReservationDao reservationDao = sqlSession.getMapper(ReservationDao.class);
		session.getAttribute("sessionId");
		if( session.getAttribute("sessionId") != null) { // 로그인중
			
			String mid = (String) session.getAttribute("sessionId");
			memberDto = reservationDao.myReservationDao(mid);
			model.addAttribute("reservation", memberDto);
			return "reservation/rCheck";
		} else {
			model.addAttribute("msg", "로그아웃 상태에서 접근 불가능한 페이지 입니다.");
			model.addAttribute("url", "login");
			
			return "alert/alert";
		}
		
	}
	
}
