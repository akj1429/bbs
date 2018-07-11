package com.web.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.web.board.vo.BoardVO;

public interface BoardService {

	//게시글 등록
	public void createBoard(BoardVO vo) throws Exception;
	
	//게시글 상세보기
	public BoardVO readBoard(int bno) throws Exception;
	
	//게시글 수정
	public void updateBoard(BoardVO vo) throws Exception;
	
	//게시글 삭제
	public void deleteBoard(int bno) throws Exception;
	
	//게시글 전체 목록
	public List<BoardVO> listAll() throws Exception;
	
	//게시글 조회수 카운트
	public void increaseViewCnt(int bno, HttpSession session) throws Exception;
}
