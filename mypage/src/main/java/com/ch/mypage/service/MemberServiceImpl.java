package com.ch.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.MemberDao;
import com.ch.mypage.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao md;

	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return md.insert(member);
	}

	@Override
	public Member select(String email) {
		// TODO Auto-generated method stub
		return md.select(email);
	}
	
	
}
