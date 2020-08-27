package com.ch.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.AccountDao;

@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	private AccountDao ad;

}
