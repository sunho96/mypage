package com.ch.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.mypage.model.Member;

@Repository
public class MyPageDaoImpl implements MyPageDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Member select(String email) {
		
		return sst.selectOne("memberns.select",email);
	}
}
