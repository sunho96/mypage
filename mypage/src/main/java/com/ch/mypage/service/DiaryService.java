package com.ch.mypage.service;

import java.util.List;

import com.ch.mypage.model.Diary;

public interface DiaryService {

	int insert(Diary diary);

	List<Diary> list(int memberNum);

}
