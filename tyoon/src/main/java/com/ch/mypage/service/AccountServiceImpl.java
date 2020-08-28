package com.ch.mypage.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.AccountDao;
import com.ch.mypage.model.Account;

@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	private AccountDao ad;

	public Account accountNumChk(int accountNum) {
		return ad.accountNumChk(accountNum);
	}

	public int Insert(Account account) {
		return ad.Insert(account);
	}

	public Collection<Account> List(int memberNum) {
		return ad.List(memberNum);
	}

	public int updatetotal(int accountNum, int total) {
		return ad.updatetotal(accountNum, total);
	}


}
