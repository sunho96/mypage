package com.ch.mypage.service;

import com.ch.mypage.model.Member;

public interface MemberService {

	int insert(Member member);

	Member select(String email);

}
