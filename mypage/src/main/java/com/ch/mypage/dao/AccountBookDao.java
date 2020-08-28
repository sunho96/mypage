package com.ch.mypage.dao;

import java.util.Collection;

import com.ch.mypage.model.AccountBook;

public interface AccountBookDao {

	Collection<AccountBook> List(int accountNum);

	int Insert(AccountBook accountBook);

	AccountBook select(int abookNum);

	int Update(AccountBook accountBook);

	int delete(int abookNum);

	int total(int accountNum);

	AccountBook detailTotal(int accountNum);


}
