package com.web.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.web.board.vo.BoardVO;
import com.web.board.vo.LoginVO;

@Repository //현재 클래스를 dao bean으로 등록
public class BoardDAOImpl implements BoardDAO{

	@Inject
	private SqlSession sqlSession;
	
	//게시글 쓰기
	@Override
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert("board.insert", vo);
	}

	//게시글 상세보기
	@Override
	public BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("board.view", bno);
	}

	//게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		sqlSession.update("board.update", vo);
	}

	//게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("board.delete", bno);
	}

	//게시글 목록 조회
	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlSession.selectList("board.listAll");
	}

	//게시글 조회수 증가
	@Override
	public void increase(int bno) throws Exception {
		sqlSession.update("board.increase", bno);
	}

	//로그인 체크
	@Override
	public boolean loginChk(LoginVO vo) throws Exception {
		return false;
	}

	//회원가입
	@Override
	public void regUserChk(LoginVO vo) throws Exception {
		System.out.println("다오임플 아이디값"+vo.getId()+"패스워드::"+vo.getPassword());
		sqlSession.insert("board.regUser",vo);
	}

}
