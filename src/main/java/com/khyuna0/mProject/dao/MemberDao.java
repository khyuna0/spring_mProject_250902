package com.khyuna0.mProject.dao;

import com.khyuna0.mProject.dto.MemberDto;

public interface MemberDao {
	
	// 회원가입
	public void joinDao(String memberid, String memberpw, int memberage, String membername, String memberemail);
	
	// 회원가입 시 아이디 중복 확인
	public int joinIdCheckDao(String memberid);
	
	// 회원가입 시 이메일 중복 확인
	public int joinEmailCheckDao(String memberemail);	
	
	// 로그인
	public int loginDao(String memberid, String memberpw);
	
	// 마이페이지
	public MemberDto myPageViewDao(String memberid);
	
	// 마이페이지 내 정보 수정
	public void myPageModifyDao(String memberpw, int memberage, String membername, String memberid);
	
	// 주문 목록 or 예약 확인
	
	// 회원 탈퇴?
	
	
}
