package com.ch.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.MyPageDao;
import com.ch.mypage.model.Member;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Autowired
	private MyPageDao md;

	@Override
	public Member select(String email) {
		
		return md.select(email);
	}
}
