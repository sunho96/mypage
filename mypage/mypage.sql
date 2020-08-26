create sequence member_seq start with 1 increment by 1 nocycle nocache;
insert into member values(member_seq.nextval, 'senho500@naver.com', '11', '이선호', '태양',010-8385-0498, sysdate,'n');