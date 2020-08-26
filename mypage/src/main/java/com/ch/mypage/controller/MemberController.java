package com.ch.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.mypage.model.Member;
import com.ch.mypage.service.MyPageService;

@Controller
public class MemberController {
	@Autowired
	private MyPageService ms;
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session) {
//		System.out.println("member email="+member.getEmail());
//		System.out.println("member password="+member.getPassword());
		int result = 0;
		Member mem = ms.select(member.getEmail());
		if (mem == null) { // 이메일이 검색이 안된 경우
			result = -1;
		} else {// 이메일이 검색된 경우
			if (mem.getPassword().equals(member.getPassword())) { // 비밀번호까지 맞는 경우
				result = 1;
				//세션
				session.setAttribute("email", member.getEmail());
				model.addAttribute("member", member);
			}
		}
		model.addAttribute("result", result);
		return "login";
	}

	@RequestMapping("main")
	public String main() {
		return "main";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "loginForm";
	}

}
