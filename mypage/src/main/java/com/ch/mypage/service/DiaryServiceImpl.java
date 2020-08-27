package com.ch.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.mypage.dao.DiaryDao;
import com.ch.mypage.model.Diary;

@Service
public class DiaryServiceImpl implements DiaryService {
	@Autowired
	private DiaryDao dd;

	@Override
	public int insert(Diary diary) {
		
		return dd.insert(diary);
	}
}
