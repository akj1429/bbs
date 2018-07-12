package com.web.board.service.impl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.aop.interceptor.DebugInterceptor;
import org.springframework.stereotype.Service;

import com.web.board.dao.BoardDAO;
import com.web.board.dao.BoardDAO;
import com.web.board.service.BoardService;
import com.web.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO boardDao;

	//게시글 쓰기
	@Override
	public void createBoard(BoardVO vo) throws Exception {
		boardDao.create(vo);
	}

	//게시글 상세정보
	@Override
	public BoardVO readBoard(int bno) throws Exception {
		return boardDao.read(bno);
	}

	//게시글 수정
	@Override
	public void updateBoard(BoardVO vo) throws Exception {
		boardDao.update(vo);
	}

	//게시글 삭제
	@Override
	public void deleteBoard(int bno) throws Exception {
		boardDao.delete(bno);
	}

	//게시글 리스트
	@Override
	public List<BoardVO> listAll() throws Exception {
		return boardDao.listAll();
	}

	//게시글 조회수 증가
	@Override
	public void increaseViewCnt(int bno, HttpSession session) throws Exception {
		boardDao.increase(bno);
	}
	
	
	
}
