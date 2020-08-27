package com.ch.mypage.model;

import lombok.Data;

@Data
public class Account {
	private int accountNum; // 계좌 식별 변호
	private int total; // 해당 계좌 잔금
	private String bank; // 계좌 은행
	private int memberNum; // 계좌 번호
//	constraint memberFK
//
//	FOREIGN KEY (memberNum)
//
//	REFERENCES MEMBER(memberNum)
//			);
	
}
