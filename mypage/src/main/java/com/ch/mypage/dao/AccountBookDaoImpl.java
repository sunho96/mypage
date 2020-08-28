package com.ch.mypage.dao;

import java.util.Collection;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.mypage.model.AccountBook;

@Repository
public class AccountBookDaoImpl implements AccountBookDao {
	@Autowired
	private SqlSessionTemplate sst;

	public Collection<AccountBook> List(int accountNum) {
		return sst.selectList("accountbookns.List", accountNum);
	}

	public int Insert(AccountBook accountBook) {
		return sst.insert("accountbookns.Insert", accountBook);
	}

	public AccountBook select(int abookNum) {
		return sst.selectOne("accountbookns.select", abookNum);
	}

	public int Update(AccountBook accountBook) {
		return sst.update("accountbookns.Update", accountBook);
	}

	public int delete(int abookNum) {
		return sst.delete("accountbookns.delete", abookNum);
	}

	public int total(int accountNum) {
		return sst.selectOne("accountbookns.total", accountNum);
	}

	public AccountBook detailTotal(int accountNum) {
		return sst.selectOne("accountbookns.detailTotal", accountNum);
	}


}
