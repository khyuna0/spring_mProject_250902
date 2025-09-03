package com.khyuna0.mProject.dao;

import java.util.List;

import com.khyuna0.mProject.dto.BoardDto;

public interface BoardDao {
	
	// 게시판 모든 글 (페이징)
	public List<BoardDto> boardListDao(int startRow, int endRow);
	
	// 게시판 모든 글의 총 개수 (페이징)
	public int boardCountDao();
	
	// 게시판 글 보기
	public BoardDto boardViewDao(int bnum);
	
	// 게시판 글쓰기
	public void boardWriteDao(String btitle, String bcontent, String bwriter);
	
	// 게시판 글 수정
	public void boardModifyDao(int bnum, String btitle, String bcontent);
	
	// 게시판 글 삭제
	public void boardDeleteDao(int bnum);
	
	// 글 조회수 처리
	public void boardHitDao(int bnum);
}
