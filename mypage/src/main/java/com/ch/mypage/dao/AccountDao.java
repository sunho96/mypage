package com.ch.mypage.dao;

import java.util.Collection;

import com.ch.mypage.model.Account;

public interface AccountDao {

	Account accountNumChk(int accountNum);

	int Insert(Account account);

	Collection<Account> List(int memberNum);

	int updatetotal(int accountNum, int total);


}
