package com.ch.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.mypage.model.Diary;
import com.ch.mypage.service.DiaryService;

@Controller
public class DiaryController {
	@Autowired
	private DiaryService ds;

	@RequestMapping("diary/insertForm")
	public String insertForm() {
		return "diary/insertForm";
	}
	@RequestMapping("diary/insert")
	public String insert(Diary diary, Model model) {
		System.out.println("diary들어오나..");
		System.out.println("diary subject="+diary.getSubject());
		System.out.println("diary content="+diary.getContent());
		System.out.println("diary memberNum="+diary.getMemberNum());
		int result = ds.insert(diary);
		System.out.println("result="+result);
		model.addAttribute("result", result);
		return "diary/insert";
	}
}
