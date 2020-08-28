package com.ch.mypage.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.mypage.model.Account;
import com.ch.mypage.model.AccountBook;
import com.ch.mypage.service.AccountBookService;
import com.ch.mypage.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService as;
	@Autowired
	private AccountBookService abs;

	@RequestMapping("/AccountMain")
	public String AccountMain() {
		return "Account/AccountMain";
	}

	@RequestMapping("/AccountInsertForm")
	public String AccountInsertForm() {
		return "Account/AccountInsertForm";
	}

	@RequestMapping(value = "/accountNumChk", produces = "text/html;charset=utf-8")
	@ResponseBody
	public String accountNumChk(int accountNum) {
		String msg = "";
		Account acc = as.accountNumChk(accountNum);
		if (acc == null)
			msg = "사용 가능한 계좌번호입니다";
		else
			msg = "이미 사용중인 계좌번호입니다";
		return msg;
	}

	@RequestMapping("/AccountInsert")
	public String AccountInsert(Account account, Model model) {
		int result = 0;
		result = as.Insert(account);
		model.addAttribute("result", result);
		return "Account/AccountInsert";
	}

	@RequestMapping("/AccountList")
	public String AccountList(HttpSession session, Model model) {
		int memberNum = (Integer) session.getAttribute("memberNum");
		Collection<Account> AccountList = as.List(memberNum);
		model.addAttribute("AccountList", AccountList);
		return "Account/AccountList";
	}

	@RequestMapping("/AccountDetailList")
	public String AccountDetailList(int accountNum, Model model) {
		Collection<AccountBook> AccountBookList = abs.List(accountNum);
		int total = abs.total(accountNum);
		int result = 0;
		result = as.updatetotal(accountNum,total);
		model.addAttribute("total", total);
		model.addAttribute("accountNum", accountNum);
		model.addAttribute("AccountBookList", AccountBookList);
		return "Account/AccountDetailList";
	}

	@RequestMapping("/AccountDetailInsertForm")
	public String AccountDetailInsertForm(int accountNum, Model model) {
		model.addAttribute("accountNum", accountNum);
		return "Account/AccountDetailInsertForm";
	}

	@RequestMapping("/AccountDetailInsert")
	public String AccountDetailInsert(AccountBook accountBook, Model model) {
		int result = 0;
		result = abs.Insert(accountBook);
		model.addAttribute("result", result);
		model.addAttribute("accountNum", accountBook.getAccountNum());
		return "Account/AccountDetailInsert";
	}

	@RequestMapping("/AccountDetailUpdateForm")
	public String AccountDetailUpdateForm(int abookNum, Model model) {
		AccountBook accountBook = abs.select(abookNum);
		model.addAttribute("accountBook", accountBook);
		return "Account/AccountDetailUpdateForm";
	}

	@RequestMapping("/AccountDetailUpdate")
	public String AccountDetailUpdate(AccountBook accountBook, Model model) {
		int result = 0;
		result = abs.Update(accountBook);
		model.addAttribute("result", result);
		model.addAttribute("accountNum", accountBook.getAccountNum());
		return "Account/AccountDetailUpdate";
	}

	@RequestMapping(value = "/AccountDetailDeleteForm", produces = "text/html;charset=utf-8")
	@ResponseBody
	public String AccountDetailDeleteForm(int abookNum) {
		String msg = "";
		int result = 0;
		result = abs.delete(abookNum);
		if (result > 0)
			msg = "삭제 완료 !";
		else
			msg = "삭제 실패 !";
		return msg;
	}
}
