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
public class MemberDto {
	
	private String memberid;
	private String memberpw;
	private int memberage;
	private String memberdate;
	private String membername;
	private String memberemail;
	
	private List<BoardDto> boardlist;
	private List<ReservationDto> reservationlist;
	private ReservationDto reservationDto;
}
