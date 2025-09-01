package com.kmii.oracle.dao;

import java.util.List;

import com.kmii.oracle.dto.BoardDto;

public class BoardDao {
	
	//게시판글쓰기 
	public void boardWriteDao(String btitle, String bcontent, String bwriter); 
	
	//게시판 글 목록보기
	public List<BoardDto> boardListDao();
	
	//게시판 모든 글 갯수
	public int AllBoardCountDao();

}
