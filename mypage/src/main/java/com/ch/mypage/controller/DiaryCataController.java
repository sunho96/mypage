package com.ch.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.mypage.model.DiaryCatagory;
import com.ch.mypage.service.DiaryService;

@Controller
public class DiaryCataController {
	@Autowired
	private DiaryService ds;
	@RequestMapping("diary/catagory")
	public String diaryCatagory(Model model) {
		List<DiaryCatagory> cataList= ds.cataList(); 
		model.addAttribute("cataList",cataList);
		return "diary/catagory";
	}
}
