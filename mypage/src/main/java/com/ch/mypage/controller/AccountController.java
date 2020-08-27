package com.ch.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.mypage.service.AccountBookService;
import com.ch.mypage.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService as;
	@Autowired
	private AccountBookService abs;

	@RequestMapping("/AccountInsertForm")
	public String AccountInsertForm() {
		return "Account/AccountInsertForm";
	}

	@RequestMapping("/AccountList")
	public String AccountList() {
		return "Account/AccountList";
	}
}
