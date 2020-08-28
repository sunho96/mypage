package com.ch.mypage.service;

import java.util.Collection;

import com.ch.mypage.model.Account;

public interface AccountService {

	Account accountNumChk(int accountNum);

	int Insert(Account account);

	Collection<Account> List(int memberNum);

	int updatetotal(int accountNum, int total);


}
