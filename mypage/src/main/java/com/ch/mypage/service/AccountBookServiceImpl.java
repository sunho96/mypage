package com.ch.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.AccountBookDao;

@Service
public class AccountBookServiceImpl implements AccountBookService{
	@Autowired
	private AccountBookDao abd;

}
