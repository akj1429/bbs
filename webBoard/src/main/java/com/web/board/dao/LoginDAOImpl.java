package com.web.board.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.board.vo.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SqlSession sql;
	
	@Override
	public boolean loginChk(LoginVO vo) {
		int count = Integer.parseInt(sql.selectOne("loginChk", vo).toString());
		int totalCount = sql.selectOne("totalAccount");
		
		if( totalCount > 0){
			if( count > 0){
				return true;
			}else {
				return false;
			}//count
		}//end totalCount
		return false;
	}//loginChk
	
}//class
