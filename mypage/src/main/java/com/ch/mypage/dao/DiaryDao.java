package com.ch.mypage.dao;

import java.util.List;

import com.ch.mypage.model.Diary;

public interface DiaryDao {

	int insert(Diary diary);

	List<Diary> list(int memberNum);

	Diary select(int diaryNum);

}
