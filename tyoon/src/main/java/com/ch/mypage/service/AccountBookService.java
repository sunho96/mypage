package com.ch.mypage.service;

import java.util.Collection;

import com.ch.mypage.model.AccountBook;

public interface AccountBookService {

	Collection<AccountBook> List(int accountNum);

	int Insert(AccountBook accountBook);

	AccountBook select(int abookNum);

	int Update(AccountBook accountBook);

	int delete(int abookNum);

	int total(int accountNum);


}
