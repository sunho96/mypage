
--테스트값 입력

select * from member;
select * from account;
select * from accountBook;
insert into member values (101,'email','pass','name','nickName','tel',sysdate,'n');
insert into member values (102,'email2','pass','name2','nickName2','tel2',sysdate,'n');
insert into member values (103,'email3','pass','name3','nickName3','tel3',sysdate,'n');
insert into member values (104,'email4','pass','name4','nickName4','tel4',sysdate,'n');

insert into account values (11,'0','신한','101');
insert into account values (12,'0','하나','101');
insert into account values (13,'0','국민','101');
insert into account values (14,'0','기업','101');

insert into account values (21,'0','신한','102');
insert into account values (22,'0','하나','102');

insert into accountBook values (1,'지출',6000,'김밥천국','식사',sysdate,'제육',11);
insert into accountBook values (2,'지출',9000,'신촌칼국수','식사',sysdate,'칼국수',11);
insert into accountBook values (3,'지출',8500,'라멘','식사',sysdate,'돈코츠',11);
insert into accountBook values (4,'지출',7000,'마라탕','식사',sysdate,'훠궈',11);
insert into accountBook values (5,'지출',9000,'버거킹','식사',sysdate,'와퍼세트',11);
insert into accountBook values (6,'지출',50000,'SKT','통신요금',sysdate,'LTE',11);
insert into accountBook values (13,'지출',55000,'지하철','교통비',sysdate,'하철이',11);
insert into accountBook values (14,'지출',50000,'현질','기타',sysdate,'바람의나라',11);
insert into accountBook values (7,'수입',150000,'취성패','급여',sysdate,'매달나옴',11);
insert into accountBook values (8,'수입',10000,'꼴박','주식',sysdate,'ㅉㅉ',11);
insert into accountBook values (9,'수입',5000,'운몰빵','복권',sysdate,'ㅅㅌㅊ',11);
insert into accountBook values (10,'수입',10000,'땅파서나옴','기타',sysdate,'??',11);



--오라클 유져 생성과 권한부여

--CREATE USER mypage IDENTIFIED BY mypage;
--grant dba to mypage;

--테이블 삭제

drop table picture;
drop table notice;
drop table hashAndBack;
drop table background;
drop table hashAndSti;
drop table objectPosition;
drop table sticker;
drop table font;
drop table hashAndComm;
drop table hashtag;
drop table community;
drop table diary;
drop table diarycatagory;
drop table accountBook;
drop table account;
drop table member;


--테이블 생성

-- 01. 회원 
create table member(
  memberNum number primary key,
  email varchar2(40),
  password VARCHAR2(20),
  name varchar2(40),
  nickName varchar2(100),
  tel VARCHAR2(15),
  regDate date,
  del VARCHAR2(2)
 );
 
 --02.계좌
 
 create table account(
  accountNum number primary key,
  total number,
  bank varchar2(30),
  memberNum number,
  constraint memberFK FOREIGN KEY (memberNum) REFERENCES MEMBER(memberNum)
);

-- 03.가계부 
create table accountBook(
  abookNum number primary key,
  dealType varchar2(10),
  amount number,
  accounts varchar2(50),
  category varchar2(30),
  regDate date,
  memo varchar2(100),
  accountNum number,
 constraint accountFK FOREIGN KEY (accountNum) REFERENCES account(accountNum)
);

-- 04. 다이어리 카테고리 
create table diarycatagory(
diaryCataNum number primary key,
name VARCHAR2(50)
);

--  05. 다이어리

create table diary(
  diaryNum number primary key,
  subject varchar2(150),
  content VARCHAR2(4000), 
  -- 데이터 형 길어서 5000 ->4000으로 줄였음
  regDate date,
  updateDate date,
  del VARCHAR2(2),
  diaryCataNum number,
  memberNum number,
constraint diarycatagoryFK1 FOREIGN KEY (diaryCataNum) REFERENCES diarycatagory(diaryCataNum),
constraint memberFK2 FOREIGN KEY (memberNum) REFERENCES  member(memberNum)
);

-- 06. 커뮤니티 
create table community(
communityNum number primary key, 
shareDate date,
diaryNum number,
constraint diaryFK FOREIGN KEY (diaryNum) REFERENCES  diary(diaryNum)
);

-- 07. 해시 태그 
create table hashtag(
hashName varchar2(50) primary key
);

-- 08. 해시-커뮤니티
create table hashAndComm(
communityNum number,
hashName VARCHAR2(50),
constraint communityNumFK FOREIGN KEY (communityNum) REFERENCES  community(communityNum),
CONSTRAINT hashNameFK FOREIGN key (hashName) REFERENCES hashtag(hashName)
);

-- 09. 폰트 
create table font(
font number primary key,
name VARCHAR2(50),
color VARCHAR2(20),
fontsize number -- font -> fontsize로 변경 
); 

--10. 스티커 
create table sticker(
stickerNum number primary key,
name varchar2(50),
groupName VARCHAR2(50)
);

--11. 오브젝트 위치값
create table objectPosition(
objectPosNum number primary key,
width number,
height number,
x number,
y number,
rotation number,
diaryNum number,
stickerNum number,
font number,
CONSTRAINT diaryNumFK FOREIGN key (diaryNum) REFERENCES diary(diaryNum),
CONSTRAINT stickerNumFK FOREIGN key (stickerNum) REFERENCES sticker(stickerNum),
CONSTRAINT fontFK FOREIGN KEY (font) REFERENCES font(font)
);


 --12. 해시/스티커
create table hashAndSti(
stickerNum number, 
hashName varchar2(50),
CONSTRAINT stickerNumFK1 FOREIGN KEY (stickerNum) REFERENCES sticker(stickerNum),
CONSTRAINT hashNameFK2 FOREIGN KEY (hashName) REFERENCES hashtag(hashName)
); 

 -- 13. 배경
CREATE table background(
backgroundNum number primary key,
name VARCHAR2(150),
groupName VARCHAR2(50)
);

--14. 해시배경
create table hashAndBack(
backgroundNum number ,
hashName VARCHAR2(50),
CONSTRAINT backgroundNumFK FOREIGN KEY (backgroundNum) REFERENCES background(backgroundNum),
CONSTRAINT hashNameFK1 FOREIGN KEY (hashName) REFERENCES hashtag(hashName)
);


--15.공지  
create table notice(
  noticeNum NUMBER primary key,
  subject varchar2(150),
  content varchar2(1000),
  regDate Date
);

--16.사진
create table picture(
  pictureNum number primary key,
  name varchar2(150),
  width number,
  height number,
  x number,
  y number,
  rotation number
);

 