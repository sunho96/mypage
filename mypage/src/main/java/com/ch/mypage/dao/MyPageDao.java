package com.ch.mypage.dao;

import com.ch.mypage.model.Member;

public interface MyPageDao {

	Member select(String email);
	
}
