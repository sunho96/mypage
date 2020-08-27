package com.ch.mypage.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.mypage.model.Diary;

@Repository
public class DiaryDaoImpl implements DiaryDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Diary diary) {
		
		return sst.insert("diaryns.insert",diary);
	}
}
