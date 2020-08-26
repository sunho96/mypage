package com.ch.mypage.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Diary {
	
	private int diaryNum; // 다이어리 번호
	private String subject; // 제목 
	private String content; // 내용 
	private Date regDate; // 날짜 
	private Date updateDate; // 수정여부 
	private String del; // 삭제 여부 
	private int diaryCataNum; // fk 카테고리 번호 
	private int memberNum; // fk 회원 번호
	
	
}
