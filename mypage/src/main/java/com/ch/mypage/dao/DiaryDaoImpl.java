package com.ch.mypage.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.mypage.model.Diary;
import com.ch.mypage.model.DiaryCatagory;

@Repository
public class DiaryDaoImpl implements DiaryDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Diary diary) {

		return sst.insert("diaryns.insert", diary);
	}

	@Override
	public List<Diary> list(int memberNum) {

		return sst.selectList("diaryns.list", memberNum);
	}

	@Override
	public Diary select(int diaryNum) {

		return sst.selectOne("diaryns.select", diaryNum);
	}

	@Override
	public int update(Diary diary) {

		return sst.update("diaryns.update", diary);
	}

	@Override
	public int delete(int diaryNum) {

		return sst.update("diaryns.delete", diaryNum);
	}

	@Override
	public int save(int diaryNum) {

		return sst.update("diaryns.save", diaryNum);
	}

	@Override
	public int del(int diaryNum) {

		return sst.delete("diaryns.del", diaryNum);
	}

	@Override
	public List<DiaryCatagory> cataList() {

		return sst.selectList("diaryCatans.cataList");
	}

	@Override
	public List<Diary> typeList(int memberNum, int diaryCataNum) {
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("memberNum", memberNum);
		hm.put("diaryCataNum", diaryCataNum);
		return sst.selectList("diaryns.typeList", hm);
	}
}
