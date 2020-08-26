package com.ch.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.mypage.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return sst.insert("memberns.insert",member);
	}

	@Override
	public Member select(String email) {
		// TODO Auto-generated method stub
		System.out.println(email);
		return sst.selectOne("memberns.select",email);
	}
}
