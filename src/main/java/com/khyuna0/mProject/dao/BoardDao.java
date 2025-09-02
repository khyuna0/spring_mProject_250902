package com.khyuna0.mProject.dao;

import java.util.List;

import com.khyuna0.mProject.dto.BoardDto;

public interface BoardDao {
	
	// 게시판 모든 글
	public List<BoardDto> boardListDao();
	
	// 게시판 모든 글의 총 개수 (페이징)
	public int boardCountDao();
	
	// 게시판 글 수정
	public BoardDto boardModifyDao();
	
	// 게시판 글 삭제
	public void boardDeleteDao();
	
	
}
