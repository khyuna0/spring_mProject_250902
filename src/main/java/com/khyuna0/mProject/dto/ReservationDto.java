package com.khyuna0.mProject.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReservationDto {
	
	private int rid; // pk, 예약번호
	private String memberid; // 예약자 아이디
	private String rlocation; // 예약한 지점명	
	private String r_room; // 예약한 교실 이름
	private String rdate; // 예약된 시간
	private String rtime;
	
	private MemberDto memberDto; // 고객 상세정보
}
