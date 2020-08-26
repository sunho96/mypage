package com.ch.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.mypage.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired 
	private NoticeService ns;
	@RequestMapping("notice/list")
	public String list() {
		return "notice/list";
	}
	@RequestMapping("notice/insertForm")
	public String insert() {
		return "notice/insertForm";
	}
}
