package com.naver.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSession session;
	
	private final String NS = "com.naver.member";
	
	
	@Override
	public String getTime() {
		
		String msg = session.selectOne(NS+".getTime");
		
		
		return msg;
	}

	@Override
	public List<MemberDTO> list() {

		
		
		return session.selectList(NS+".list");
	}
	
	
}
