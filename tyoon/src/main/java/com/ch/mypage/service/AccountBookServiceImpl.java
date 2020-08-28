package com.ch.mypage.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.AccountBookDao;
import com.ch.mypage.model.AccountBook;

@Service
public class AccountBookServiceImpl implements AccountBookService{
	@Autowired
	private AccountBookDao abd;

	public Collection<AccountBook> List(int accountNum) {
		return abd.List(accountNum);
	}

	public int Insert(AccountBook accountBook) {
		return abd.Insert(accountBook);
	}

	public AccountBook select(int abookNum) {
		return abd.select(abookNum);
	}

	public int Update(AccountBook accountBook) {
		return abd.Update(accountBook);
	}

	public int delete(int abookNum) {
		return abd.delete(abookNum);
	}

	public int total(int accountNum) {
		return abd.total(accountNum);
	}

	public AccountBook detailTotal(int accountNum) {
		return abd.detailTotal(accountNum);
	}


}
