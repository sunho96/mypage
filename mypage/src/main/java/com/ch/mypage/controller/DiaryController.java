package com.ch.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	@RequestMapping("diary/list")
	public String list(HttpSession session,Model model) {
		int memberNum= (Integer) session.getAttribute("memberNum");
		List<Diary> list = ds.list(memberNum);
		model.addAttribute("list",list);
		return "diary/list";
	}
	@RequestMapping("diary/view")
	public String view(int diaryNum, Model model) {
		Diary diary = ds.select(diaryNum);
		model.addAttribute("diary",diary);
		return "diary/view";
		
	}
	
	@RequestMapping("diary/updateForm")
	public String updateForm(int diaryNum,Model model) {
		Diary diary = ds.select(diaryNum);
		model.addAttribute("diary",diary);
		return "diary/updateForm";
	}
	@RequestMapping("diary/update")
	public String update(Diary diary,Model model) {
		int result = ds.update(diary);
		model.addAttribute("result",result);
		return "diary/update";
	}
	@RequestMapping("diary/delete")
	public String delete(int diaryNum,Model model){
		int result = ds.delete(diaryNum);
		model.addAttribute("result",result);
		return "diary/delete";
	}
	
}
