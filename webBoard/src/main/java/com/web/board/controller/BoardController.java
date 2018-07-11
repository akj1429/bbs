package com.web.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.board.service.BoardService;
import com.web.board.vo.BoardVO;

@Controller
public class BoardController {

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value="home.do")
	public ModelAndView home() throws Exception{
		List<BoardVO> boardList = boardService.listAll();
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		mav.addObject("boardList",boardList);
		
		return mav;
	}//home
	
	@RequestMapping(value="writeBoard.do", method=RequestMethod.GET)
	public String write(){
		return "writeBoard";
	}//write
	
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute BoardVO vo) throws Exception{
		boardService.createBoard(vo);
		return "redirect:home.do";
	}//insert
	
	@RequestMapping(value="boardDetail.do", method=RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam int bno, HttpSession session) throws Exception{
		//boardService.increaseViewCnt(bno, session);
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("boardDetail");
		mav.addObject("dto",boardService.readBoard(bno));
		
		return mav;
	}//boardDetail
	
}