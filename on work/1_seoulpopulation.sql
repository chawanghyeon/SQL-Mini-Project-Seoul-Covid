sqlplus

---------------------------------------------------------------------------- user 생성 및 접속
CONNECT system/manager

CREATE USER SCOVID IDENTIFIED BY SEOUL

GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO SCOVID IDENTIFIED BY SEOUL;
ALTER USER SCOVID DEFAULT TABLESPACE USERS;
ALTER USER SCOVID TEMPORARY TABLESPACE TEMP;

CONNECT SCOVID/SEOUL
----------------------------------------------------------------------------

---------------------------------------------------------------------------- seoulpopulation 테이블 생성시 종속된 테이블 드랍
drop table seoulcovid;
----------------------------------------------------------------------------

---------------------------------------------------------------------------- seoulpopulation 테이블 생성
drop table seoulpopulation;

set linesize 1000
set pagesize 5000

CREATE TABLE seoulpopulation (
인구 number (10),
구분 VARCHAR2 (50) primary key,
일반가구수 number (10),
one number (10),
two number (10),
three number (10),
four number (10),
five number (10),
six number (10),
seven number (10),
평균가구원수 number (10, 2)
);

INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (159842, '종로구',62652,24671,16208,11154,7828,2143,505,143,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (135321, '중구',54496,22078,14578,9540,6292,1533,373,102,2.1);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (244953,'용산구',93177,35148,25164,17439,11736,2907,612,171,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (302695, '성동구',122770,41488,32125,25634,18379,4014,877,253,2.3);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (361923, '광진구',149905,58714,35678,28054,21454,4711,1006,288,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (358679, '동대문구',148349,58152,36060,27436,20168,4988,1204,341,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (400989, '중랑구',160776,52196,44057,33160,24003,5766,1251,343,2.3);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (449871, '성북구',176729,57832,44443,37033,28861,6718,1446,396,2.4);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (313550, '강북구',128012,42791,35439,25967,18104,4465,981,265,2.3);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (329300, '도봉구',126831,32653,36329,29580,22061,4901,1014,293,2.5);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (529532, '노원구',201458,53365,52832,46783,38952,7772,1447,307,2.5);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (485842, '은평구',184890,52814,52257,40789,29700,7303,1604,423,2.4);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (323860, '서대문구',128635,46449,32581,25283,18696,4376,976,274,2.3);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (383494, '마포구',156885,59248,39471,29985,21930,4962,1014,275,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (460048, '양천구',162867,36345,41435,40897,35189,7272,1393,336,2.6);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (589536, '강서구',240135,79371,63517,49322,37325,8458,1707,435,2.3);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (435751, '구로구',160378,47740,43700,34624,26459,6214,1261,380,2.4);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (249641, '금천구',99315,37778,25207,18771,13535,3131,708,185,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (405982, '영등포구',153923,58214,38671,29661,21503,4597,1032,245,2.2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (404617, '동작구',164963,60088,40739,32514,24570,5564,1204,284,2.3);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (514555, '관악구',242154,119863,55423,34875,24563,5806,1283,341,2);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (429995, '서초구',155377,42667,38892,35327,29850,6704,1503,434,2.5);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (544085, '강남구',206524,66073,51560,43435,35800,7671,1564,421,2.4);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (676673, '송파구',252212,68861,65402,57821,47607,10014,2038,469,2.5);
INSERT INTO seoulpopulation(인구,구분,일반가구수,one,two,three,four,five,six,seven,평균가구원수) VALUES (462275, '강동구',162976,45188,43297,36735,29461,6606,1333,356,2.5);

commit;
----------------------------------------------------------------------------