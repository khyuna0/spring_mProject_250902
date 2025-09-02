package com.khyuna0.mProject.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BoardDto {
	
	private int rnum; //페이징용
	private int bnum; // PK
	private String btitle;
	private String bcontent;
	private String bwriter; // = memberid
	private int bhit;
	private String bdate;
	
	private MemberDto memberDto;
	
}
