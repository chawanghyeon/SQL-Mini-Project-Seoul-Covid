sqlplus SCOVID/SEOUL


----------------------------------------------------------------------------

---------------------------------------------------------------------------- seouluser 테이블 생성
drop table seouluser;

set linesize 1000
set pagesize 5000

CREATE TABLE seouluser (
회원번호 number (10) primary key,
이름 varchar2 (50),
거주지역 varchar2 (50) constraint seouluser_live_fk references seoulpopulation(구분), 
출근지역 varchar2 (50),
취향 varchar2 (50)
);

INSERT INTO seouluser(회원번호, 이름, 거주지역, 출근지역, 취향) VALUES (001, '김재웅','강서구','서초구', '일식');
INSERT INTO seouluser(회원번호, 이름, 거주지역, 출근지역, 취향) VALUES (002, '차왕현','관악구','서초구','한식');
INSERT INTO seouluser(회원번호, 이름, 거주지역, 출근지역, 취향) VALUES (003, 'A씨','노원구','서초구','양식');
INSERT INTO seouluser(회원번호, 이름, 거주지역, 출근지역, 취향) VALUES (004, 'B씨','금천구','서초구','중식');
INSERT INTO seouluser(회원번호, 이름, 거주지역, 출근지역, 취향) VALUES (005, 'C씨','강서구','서초구','동남아식');
INSERT INTO seouluser(회원번호, 이름, 거주지역, 출근지역, 취향) VALUES (006, 'D씨','관악구','서초구','한식');

commit;
