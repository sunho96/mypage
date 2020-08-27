package com.ch.mypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.mypage.model.Member;
import com.ch.mypage.service.MemberService;
import com.ch.mypage.service.MyPageService;

@Controller
public class MemberController {
	@Autowired
	private MyPageService ms;
	@Autowired MemberService mbs;
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "member/loginForm";
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
				session.setAttribute("memberNum", mem.getMemberNum());
				model.addAttribute("member", member);
			}
		}
		model.addAttribute("result", result);
		return "member/login";
	}

	@RequestMapping("main")
	public String main() {
		return "main";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "member/loginForm";
	}
	@RequestMapping("table_form")
	public String table_form() {
		return "table_form";
	}
	
	
	@RequestMapping(value="emailChk.do",  produces = "text/html;charset=utf-8")
	@ResponseBody
	public String emailChk(String email) {
		String msg="";
		
		Member member = ms.select(email);
		if(member == null) {
			msg = "사용가능";
		}else {
			msg = "사용불가";
		}
		return msg;
	}

	@RequestMapping(value="join.do" , method = RequestMethod.POST)
	public String join(Member member, Model model ) {
		int result =0;
		Member mem = mbs.select(member.getEmail());
		
		if(mem== null) {
			result= mbs.insert(member);
		}else result=-1;
		
		
		model.addAttribute("result", result);
		model.addAttribute("member", member);
		
		return "member/join";
	}
	@RequestMapping("memberUpdate_form")
	public String memberUpdate_form() {
	
		return "member/memberUpdate_form";
	}

}
