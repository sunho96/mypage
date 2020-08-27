package com.ch.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ch.mypage.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService as;
}
