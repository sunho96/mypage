package com.ch.mypage.dao;

import java.util.List;

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

	@Override
	public List<Diary> list(int memberNum) {
		
		return sst.selectList("diaryns.list",memberNum);
	}

	@Override
	public Diary select(int diaryNum) {
	
		return sst.selectOne("diaryns.select",diaryNum);
	}

	@Override
	public int update(Diary diary) {
		
		return sst.update("diaryns.update",diary);
	}

	@Override
	public int delete(int diaryNum) {
		
		return sst.update("diaryns.delete",diaryNum);
	}
}
