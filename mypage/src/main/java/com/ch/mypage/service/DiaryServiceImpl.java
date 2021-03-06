package com.ch.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.DiaryDao;
import com.ch.mypage.model.Diary;
import com.ch.mypage.model.DiaryCatagory;

@Service
public class DiaryServiceImpl implements DiaryService {
	@Autowired
	private DiaryDao dd;

	@Override
	public int insert(Diary diary) {
		
		return dd.insert(diary);
	}

	@Override
	public List<Diary> list(int memberNum) {
		
		return dd.list(memberNum);
	}

	@Override
	public Diary select(int diaryNum) {
		
		return dd.select(diaryNum);
	}

	@Override
	public int update(Diary diary) {
		
		return dd.update(diary);
	}

	@Override
	public int delete(int diaryNum) {
		
		return dd.delete(diaryNum);
	}

	@Override
	public int save(int diaryNum) {
		
		return dd.save(diaryNum);
	}

	@Override
	public int del(int diaryNum) {
		
		return dd.del(diaryNum);
	}

	@Override
	public List<DiaryCatagory> cataList() {
		
		return dd.cataList();
	}

	@Override
	public List<Diary> typeList(int memberNum, int diaryCataNum) {
		
		return dd.typeList(memberNum,diaryCataNum);
	}
}
