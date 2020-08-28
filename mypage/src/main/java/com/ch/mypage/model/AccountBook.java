package com.ch.mypage.model;

import java.sql.Date;

import lombok.Data;

@Data
public class AccountBook {
	private int abookNum;
	private String dealType;
	private int amount;
	private String accounts;
	private String category;
	private Date regDate;
	private String memo;
	private int accountNum;
	
	private int insal;
	private int insto;
	private int inlot;
	private int inetc;
	private int exprice;
	private int expcel;
	private int exprent;
	private int expfare;
	private int expetc;
}
