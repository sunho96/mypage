package com.ch.mypage.dao;

import com.ch.mypage.model.Member;

public interface MemberDao {

	int insert(Member member);

	Member select(String email);

}
