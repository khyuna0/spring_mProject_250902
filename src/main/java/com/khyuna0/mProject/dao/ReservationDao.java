package com.khyuna0.mProject.dao;

import java.util.List;

import com.khyuna0.mProject.dto.MemberDto;
import com.khyuna0.mProject.dto.ReservationDto;

public interface ReservationDao {
	// 예약하기
	public void reservationDao(String memberid, String rlocation, String r_room, String rdate, String rtime);
	
	// 폼에서 예약 불가능한 선택지 보이지 않게 처리하기
	public List<ReservationDto> findAllReservationsDao();
	
	// 예약 시 미성년자 10시 이후 예약 불가 처리
	public MemberDto validateMinorReservationTimeDao(String memberid);
	
	// 예약 확인
	public MemberDto myReservationDao(String memberid);
}
