package com.kmii.oracle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmii.oracle.dao.BoardDao;
import com.kmii.oracle.dto.BoardDto;

@Controller
public class BoardController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value="/bwrite")
	public String bwrite(HttpSession session, Model model) {
		
		String sid = (String) session.getAttribute("sessionId");
		if(sid==null) {
			model.addAttribute("msg", "로그인 한 회원만 글쓰기가 가능합니다");
			model.addAttribute("url","login");
			
			return "alert/alert";
		}
		
		return "writeForm";
	}
	
	@RequestMapping(value="/bwriteOk")
	public String bwriteOk(HttpServletRequest request, Model model) {
		
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bwriter = request.getParameter("bwriter");
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		boardDao.boardWriteDao(btitle, bcontent, bwriter); //글쓰기	
		
		return "redirect:blist";
	}
	
	@RequestMapping(value="/blist")
	public String blist(Model model) {
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> boardDtos = boardDao.boardListDao();
		
		model.addAttribute("boardList",boardDtos);
		
		model.addAttribute("boardCount", boardDao.AllBoardCountDao()); //모든 글 갯수 전달하기
		
		return "boardList";
	}
	
	@RequestMapping(value="/blist2")
	public String blist2(Model model) {
		
		BoardDao boardDao = sqlSession.getMapper(BoardDao.class);
		List<BoardDto> boardDtos = boardDao.boardListDao();
		model.addAttribute("boardList",boardDtos);
		
		model.addAttribute("boardCount", boardDao.AllBoardCountDao()); //모든 글 갯수 전달하기
		
		return "boardList2";
	}
	
	

}
