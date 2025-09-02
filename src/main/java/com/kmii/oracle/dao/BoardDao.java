package com.kmii.oracle.dao;

import java.util.List;

import com.kmii.oracle.dto.BoardDto;

public interface BoardDao {
	
	public void boardWriteDao(String btitle, String bcontent, String bwriter); //게시판 글쓰기
	public List<BoardDto> boardListDao(); //게시판 글 목록 보기(페이징 안됨)
	public int AllBoardCountDao(); //게시판 모든 글 갯수 가져오기
	public int boardDeleteDao(String bnum); // 게시판 글 삭제
	public BoardDto contentViewDao(String bnum); // 글번호로 해당글 레코드 가져오기
	public int boardModifyDao(String bnum, String btitle, String bcontent);  //글번호로 글 수정하기
	public void updateHitDao(String bnum); // 해당글의 조회수 1 증가
	public List<BoardDto> pageBoardListDao(int startRow, int endRow); // 페이징된 게시판 글 목록 보기
}
