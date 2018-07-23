package com.web.board.dao;

import java.util.List;

import com.web.board.vo.BoardVO;
import com.web.board.vo.LoginVO;

public interface BoardDAO {

	public void create(BoardVO vo) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void update(BoardVO vo) throws Exception;
	
	public void delete(int bno) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public void increase(int bno) throws Exception;
	
	public boolean loginChk(LoginVO vo) throws Exception;
	
	public void regUserChk(LoginVO vo) throws Exception ;
}
