package com.ch.mypage.dao;

import java.util.Collection;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.mypage.model.Account;

@Repository
public class AccountDaoImpl implements AccountDao {
	@Autowired
	private SqlSessionTemplate sst;

	public Account accountNumChk(int accountNum) {
		return sst.selectOne("accountns.accountNumChk", accountNum);
	}

	public int Insert(Account account) {
		return sst.insert("accountns.Insert", account);
	}

	public Collection<Account> List(int memberNum) {
		return sst.selectList("accountns.List", memberNum);
	}

	public int updatetotal(int accountNum, int total) {
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("accountNum", accountNum);
		hm.put("total", total);
		return sst.update("accountns.updatetotal", hm);
	}

}
