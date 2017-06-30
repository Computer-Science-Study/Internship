SET GLOBAL auto_increment_increment = 4;
SET GLOBAL auto_increment_offset = 2;

CREATE DATABASE sample;

USE sample;

DROP TABLE IF EXISTS sample_employee;
CREATE TABLE sample_employee(
  employee_num INT(11) NOT NULL AUTO_INCREMENT COMMENT '사원번호'
, employee_name CHAR(5) NOT NULL COMMENT '사원명'
, contact_number CHAR(13) NOT NULL DEFAULT '070-2345-9000' COMMENT '연락처'
, email VARCHAR(20) NULL COMMENT '메일주소'
, senior_manager_num INT(11) NULL COMMENT '상위자 번호'
, contract_date DATE NOT NULL COMMENT '입사일'
, update_date DATE NOT NULL COMMENT '정보 수정일'
, PRIMARY KEY (employee_num)
)ENGINE=INNODB CHARSET=utf8 COMMENT='사원정보테이블'
;

INSERT INTO sample_employee VALUES (2 , '김길동1' , '010-1234-5678' , 'ak1@tmon.co.kr' , 0 , '2013-01-01' , '2013-01-01');
INSERT INTO sample_employee VALUES (4 , '김길동2' , '010-2244-6688' , 'bk2@tmon.co.kr' , 2 , '2013-01-05' , '2013-01-05');
INSERT INTO sample_employee VALUES (6 , '김길동3' , '010-1234-5679' , 'ck3@tmon.co.kr' , 2 , '2013-01-09' , '2013-01-09');
INSERT INTO sample_employee VALUES (8 , '김길동4' , '010-2244-6689' , 'ak2@tmon.co.kr' , 4 , '2013-01-13' , '2013-01-13');
INSERT INTO sample_employee VALUES (10 , '김길동5' , '010-1234-5680' , 'bk3@tmon.co.kr' , 4 , '2013-01-17' , '2013-01-17');
INSERT INTO sample_employee VALUES (12 , '김길동6' , '011-2244-6690' , 'ck4@tmon.co.kr' , 4 , '2013-01-21' , '2013-01-21');
INSERT INTO sample_employee VALUES (14 , '김길동7' , '011-1234-5681' , 'ak3@tmon.co.kr' , 6 , '2013-01-25' , '2013-01-25');
INSERT INTO sample_employee VALUES (16 , '김길동8' , '011-2244-6691' , 'bk4@tmon.co.kr' , 6 , '2013-01-29' , '2013-01-29');
INSERT INTO sample_employee VALUES (18 , '김길동9' , '011-1234-5682' , 'ck5@tmon.co.kr' , 6 , '2013-02-01' , '2013-02-01');
INSERT INTO sample_employee VALUES (20 , '김길동10' , '016-2244-6692' , 'ak4@tmon.co.kr' , 8 , '2013-02-05' , '2013-02-05');
INSERT INTO sample_employee VALUES (22 , '김길동11' , '016-1234-5683' , 'bk5@tmon.co.kr' , 8 , '2013-02-09' , '2013-02-09');
INSERT INTO sample_employee VALUES (24 , '김길동12' , '016-2244-6693' , 'ck6@tmon.co.kr' , 8 , '2013-02-13' , '2013-02-13');
INSERT INTO sample_employee VALUES (26 , '김길동13' , '016-1234-5684' , 'ak5@tmon.co.kr' , 10 , '2013-02-17' , '2013-02-17');
INSERT INTO sample_employee VALUES (28 , '김길동14' , '016-2244-6694' , 'bk6@tmon.co.kr' , 10 , '2013-02-21' , '2013-02-21');
INSERT INTO sample_employee VALUES (30 , '김길동15' , '016-1234-5685' , 'ck7@tmon.co.kr' , 10 , '2013-02-25' , '2013-02-25');
INSERT INTO sample_employee VALUES (32 , '김길동16' , '016-2244-6695' , 'ak6@tmon.co.kr' , 12 , '2013-02-28' , '2013-02-28');
INSERT INTO sample_employee VALUES (34 , '김길동17' , '018-1234-5686' , 'bk7@tmon.co.kr' , 12 , '2014-03-01' , '2014-03-01');
INSERT INTO sample_employee VALUES (36 , '김길동18' , '018-2244-6696' , 'ck8@tmon.co.kr' , 12 , '2014-03-04' , '2014-03-04');
INSERT INTO sample_employee VALUES (38 , '김길동19' , '018-1234-5687' , 'ak7@tmon.co.kr' , 14 , '2014-03-07' , '2014-03-07');
INSERT INTO sample_employee VALUES (40 , '김길동20' , '010-2244-6697' , 'bk8@tmon.co.kr' , 14 , '2014-03-10' , '2014-03-10');
INSERT INTO sample_employee VALUES (42 , '김길동21' , '010-1234-5688' , 'ck9@tmon.co.kr' , 14 , '2014-03-13' , '2014-03-13');
INSERT INTO sample_employee VALUES (44 , '김길동22' , '018-2244-6698' , 'ak8@tmon.co.kr' , 16 , '2014-03-16' , '2014-03-16');
INSERT INTO sample_employee VALUES (46 , '김길동23' , '011-1234-5689' , 'bk9@tmon.co.kr' , 16 , '2014-03-19' , '2014-03-19');
INSERT INTO sample_employee VALUES (48 , '김길동24' , '011-2244-6699' , 'ck10@tmon.co.kr' , 16 , '2014-03-22' , '2014-03-22');
INSERT INTO sample_employee VALUES (50 , '김길동25' , '010-1234-5690' , 'ak9@tmon.co.kr' , 18 , '2014-03-25' , '2014-03-25');
INSERT INTO sample_employee VALUES (52 , '김길동26' , '016-2244-6700' , 'bk10@tmon.co.kr' , 18 , '2014-03-28' , '2014-03-28');
INSERT INTO sample_employee VALUES (54 , '김길동27' , '010-1234-5691' , 'ck11@tmon.co.kr' , 18 , '2014-03-31' , '2014-03-31');
INSERT INTO sample_employee VALUES (56 , '김길동28' , '010-2244-6701' , 'ak10@tmon.co.kr' , 20 , '2014-04-01' , '2014-04-01');
INSERT INTO sample_employee VALUES (58 , '김길동29' , '010-1234-5692' , 'bk11@tmon.co.kr' , 20 , '2014-04-04' , '2014-04-04');
INSERT INTO sample_employee VALUES (60 , '김길동30' , '018-2244-6702' , 'ck12@tmon.co.kr' , 20 , '2014-04-07' , '2014-04-07');

DROP TABLE IF EXISTS sample_sales;
CREATE TABLE sample_sales(
  employee_num INT(11) NOT NULL  COMMENT '사원번호'
, trade_kind TINYINT(1) NOT NULL COMMENT '거래종류'
, sales_price INT(6) NULL COMMENT '금액'
, insert_date DATE NOT NULL COMMENT '입력일'
)ENGINE=INNODB CHARSET=utf8 COMMENT='영업금액'
;

INSERT INTO sample_sales VALUES (10 , 1 , 3792 , '2015-01-01');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-01-02');
INSERT INTO sample_sales VALUES (10 , 1 , 98024 , '2015-01-03');
INSERT INTO sample_sales VALUES (10 , 0 , 15452 , '2015-01-04');
INSERT INTO sample_sales VALUES (10 , 1 , 19394 , '2015-01-05');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-01-06');
INSERT INTO sample_sales VALUES (10 , 1 , 19512 , '2015-01-07');
INSERT INTO sample_sales VALUES (10 , 1 , 41609 , '2015-01-08');
INSERT INTO sample_sales VALUES (10 , 0 , 44424 , '2015-01-09');
INSERT INTO sample_sales VALUES (10 , 1 , 54287 , '2015-01-10');
INSERT INTO sample_sales VALUES (10 , 1 , 0 , '2015-01-11');
INSERT INTO sample_sales VALUES (10 , 1 , 72778 , '2015-01-12');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-01-13');
INSERT INTO sample_sales VALUES (10 , 1 , 20801 , '2015-01-14');
INSERT INTO sample_sales VALUES (10 , 1 , 99812 , '2015-01-15');
INSERT INTO sample_sales VALUES (10 , 0 , 26784 , '2015-01-16');
INSERT INTO sample_sales VALUES (10 , 1 , 36523 , '2015-01-17');
INSERT INTO sample_sales VALUES (10 , 1 , 80707 , '2015-01-18');
INSERT INTO sample_sales VALUES (10 , 1 , 20419 , '2015-01-19');
INSERT INTO sample_sales VALUES (10 , 1 , 68117 , '2015-01-20');
INSERT INTO sample_sales VALUES (10 , 0 , 18360 , '2015-01-21');
INSERT INTO sample_sales VALUES (10 , 1 , 19360 , '2015-01-22');
INSERT INTO sample_sales VALUES (10 , 1 , 55688 , '2015-01-23');
INSERT INTO sample_sales VALUES (10 , 1 , 42225 , '2015-01-24');
INSERT INTO sample_sales VALUES (10 , 0 , 12887 , '2015-01-25');
INSERT INTO sample_sales VALUES (10 , 1 , 21893 , '2015-01-26');
INSERT INTO sample_sales VALUES (10 , 1 , 96846 , '2015-01-27');
INSERT INTO sample_sales VALUES (10 , 1 , 0 , '2015-01-28');
INSERT INTO sample_sales VALUES (10 , 1 , 9463 , '2015-01-29');
INSERT INTO sample_sales VALUES (10 , 1 , 46853 , '2015-01-30');
INSERT INTO sample_sales VALUES (10 , 1 , 89120 , '2015-01-31');

INSERT INTO sample_sales VALUES (20 , 1 , 65750 , '2015-01-01');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-01-02');
INSERT INTO sample_sales VALUES (20 , 1 , 4199 , '2015-01-03');
INSERT INTO sample_sales VALUES (20 , 0 , 19351 , '2015-01-04');
INSERT INTO sample_sales VALUES (20 , 1 , 37856 , '2015-01-05');
INSERT INTO sample_sales VALUES (20 , 0 , 68017 , '2015-01-06');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-01-07');
INSERT INTO sample_sales VALUES (20 , 1 , 33190 , '2015-01-08');
INSERT INTO sample_sales VALUES (20 , 1 , 10725 , '2015-01-09');
INSERT INTO sample_sales VALUES (20 , 0 , 71946 , '2015-01-10');
INSERT INTO sample_sales VALUES (20 , 1 , 0 , '2015-01-11');
INSERT INTO sample_sales VALUES (20 , 1 , 38484 , '2015-01-12');
INSERT INTO sample_sales VALUES (20 , 1 , 22396 , '2015-01-13');
INSERT INTO sample_sales VALUES (20 , 1 , 46893 , '2015-01-14');
INSERT INTO sample_sales VALUES (20 , 0 , 31939 , '2015-01-15');
INSERT INTO sample_sales VALUES (20 , 1 , 33329 , '2015-01-16');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-01-17');
INSERT INTO sample_sales VALUES (20 , 1 , 56806 , '2015-01-18');
INSERT INTO sample_sales VALUES (20 , 0 , 58043 , '2015-01-19');
INSERT INTO sample_sales VALUES (20 , 1 , 65947 , '2015-01-20');
INSERT INTO sample_sales VALUES (20 , 1 , 51412 , '2015-01-21');
INSERT INTO sample_sales VALUES (20 , 1 , 0 , '2015-01-22');
INSERT INTO sample_sales VALUES (20 , 1 , 61896 , '2015-01-23');
INSERT INTO sample_sales VALUES (20 , 1 , 2858 , '2015-01-24');
INSERT INTO sample_sales VALUES (20 , 1 , 99795 , '2015-01-25');
INSERT INTO sample_sales VALUES (20 , 1 , 12453 , '2015-01-26');
INSERT INTO sample_sales VALUES (20 , 1 , 74955 , '2015-01-27');
INSERT INTO sample_sales VALUES (20 , 1 , 13359 , '2015-01-28');
INSERT INTO sample_sales VALUES (20 , 1 , 54958 , '2015-01-29');
INSERT INTO sample_sales VALUES (20 , 1 , 80039 , '2015-01-30');
INSERT INTO sample_sales VALUES (20 , 1 , 87406 , '2015-01-31');

INSERT INTO sample_sales VALUES (30 , 1 , 38101 , '2015-01-01');
INSERT INTO sample_sales VALUES (30 , 1 , 89257 , '2015-01-02');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-01-03');
INSERT INTO sample_sales VALUES (30 , 1 , 11024 , '2015-01-04');
INSERT INTO sample_sales VALUES (30 , 0 , 58286 , '2015-01-05');
INSERT INTO sample_sales VALUES (30 , 1 , 1805 , '2015-01-06');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-01-07');
INSERT INTO sample_sales VALUES (30 , 1 , 60900 , '2015-01-08');
INSERT INTO sample_sales VALUES (30 , 0 , 84302 , '2015-01-09');
INSERT INTO sample_sales VALUES (30 , 1 , 4960 , '2015-01-10');
INSERT INTO sample_sales VALUES (30 , 1 , 74545 , '2015-01-11');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-01-12');
INSERT INTO sample_sales VALUES (30 , 1 , 0 , '2015-01-13');
INSERT INTO sample_sales VALUES (30 , 1 , 52323 , '2015-01-14');
INSERT INTO sample_sales VALUES (30 , 0 , 82797 , '2015-01-15');
INSERT INTO sample_sales VALUES (30 , 1 , 67709 , '2015-01-16');
INSERT INTO sample_sales VALUES (30 , 1 , 63190 , '2015-01-17');
INSERT INTO sample_sales VALUES (30 , 1 , 41903 , '2015-01-18');
INSERT INTO sample_sales VALUES (30 , 0 , 47918 , '2015-01-19');
INSERT INTO sample_sales VALUES (30 , 1 , 18086 , '2015-01-20');
INSERT INTO sample_sales VALUES (30 , 1 , 44527 , '2015-01-21');
INSERT INTO sample_sales VALUES (30 , 1 , 59364 , '2015-01-22');
INSERT INTO sample_sales VALUES (30 , 0 , 61476 , '2015-01-23');
INSERT INTO sample_sales VALUES (30 , 1 , 20330 , '2015-01-24');
INSERT INTO sample_sales VALUES (30 , 1 , 62243 , '2015-01-25');
INSERT INTO sample_sales VALUES (30 , 1 , 54135 , '2015-01-26');
INSERT INTO sample_sales VALUES (30 , 1 , 42983 , '2015-01-27');
INSERT INTO sample_sales VALUES (30 , 1 , 0 , '2015-01-28');
INSERT INTO sample_sales VALUES (30 , 1 , 37459 , '2015-01-29');
INSERT INTO sample_sales VALUES (30 , 1 , 50191 , '2015-01-30');
INSERT INTO sample_sales VALUES (30 , 1 , 92736 , '2015-01-31');

INSERT INTO sample_sales VALUES (10 , 1 , 43382 , '2015-02-01');
INSERT INTO sample_sales VALUES (10 , 1 , 56107 , '2015-02-02');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-02-03');
INSERT INTO sample_sales VALUES (10 , 1 , 9353 , '2015-02-04');
INSERT INTO sample_sales VALUES (10 , 0 , 25521 , '2015-02-05');
INSERT INTO sample_sales VALUES (10 , 1 , 13562 , '2015-02-06');
INSERT INTO sample_sales VALUES (10 , 1 , 90924 , '2015-02-07');
INSERT INTO sample_sales VALUES (10 , 0 , 83986 , '2015-02-08');
INSERT INTO sample_sales VALUES (10 , 1 , 32761 , '2015-02-09');
INSERT INTO sample_sales VALUES (10 , 1 , 28196 , '2015-02-10');
INSERT INTO sample_sales VALUES (10 , 0 , 2810 , '2015-02-11');
INSERT INTO sample_sales VALUES (10 , 1 , 12935 , '2015-02-12');
INSERT INTO sample_sales VALUES (10 , 1 , 62567 , '2015-02-13');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-02-14');
INSERT INTO sample_sales VALUES (10 , 0 , 54446 , '2015-02-15');
INSERT INTO sample_sales VALUES (10 , 1 , 49314 , '2015-02-16');
INSERT INTO sample_sales VALUES (10 , 1 , 50895 , '2015-02-17');
INSERT INTO sample_sales VALUES (10 , 0 , 90507 , '2015-02-18');
INSERT INTO sample_sales VALUES (10 , 1 , 8109 , '2015-02-19');
INSERT INTO sample_sales VALUES (10 , 1 , 0 , '2015-02-20');
INSERT INTO sample_sales VALUES (10 , 1 , 53776 , '2015-02-21');
INSERT INTO sample_sales VALUES (10 , 1 , 30321 , '2015-02-22');
INSERT INTO sample_sales VALUES (10 , 1 , 4516 , '2015-02-23');
INSERT INTO sample_sales VALUES (10 , 1 , 0 , '2015-02-24');
INSERT INTO sample_sales VALUES (10 , 1 , 32699 , '2015-02-25');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-02-26');
INSERT INTO sample_sales VALUES (10 , 1 , 38975 , '2015-02-27');
INSERT INTO sample_sales VALUES (10 , 1 , 36657 , '2015-02-28');

INSERT INTO sample_sales VALUES (20 , 1 , 63529 , '2015-02-01');
INSERT INTO sample_sales VALUES (20 , 1 , 72197 , '2015-02-02');
INSERT INTO sample_sales VALUES (20 , 0 , 38580 , '2015-02-03');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-02-04');
INSERT INTO sample_sales VALUES (20 , 0 , 90125 , '2015-02-05');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-02-06');
INSERT INTO sample_sales VALUES (20 , 0 , 88731 , '2015-02-07');
INSERT INTO sample_sales VALUES (20 , 1 , 10787 , '2015-02-08');
INSERT INTO sample_sales VALUES (20 , 1 , 0 , '2015-02-09');
INSERT INTO sample_sales VALUES (20 , 1 , 86283 , '2015-02-10');
INSERT INTO sample_sales VALUES (20 , 0 , 78914 , '2015-02-11');
INSERT INTO sample_sales VALUES (20 , 1 , 4439 , '2015-02-12');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-02-13');
INSERT INTO sample_sales VALUES (20 , 1 , 47421 , '2015-02-14');
INSERT INTO sample_sales VALUES (20 , 1 , 59112 , '2015-02-15');
INSERT INTO sample_sales VALUES (20 , 0 , 98878 , '2015-02-16');
INSERT INTO sample_sales VALUES (20 , 1 , 10611 , '2015-02-17');
INSERT INTO sample_sales VALUES (20 , 1 , 85264 , '2015-02-18');
INSERT INTO sample_sales VALUES (20 , 1 , 68066 , '2015-02-19');
INSERT INTO sample_sales VALUES (20 , 1 , 37518 , '2015-02-20');
INSERT INTO sample_sales VALUES (20 , 1 , 0 , '2015-02-21');
INSERT INTO sample_sales VALUES (20 , 1 , 34049 , '2015-02-22');
INSERT INTO sample_sales VALUES (20 , 1 , 19803 , '2015-02-23');
INSERT INTO sample_sales VALUES (20 , 1 , 94986 , '2015-02-24');
INSERT INTO sample_sales VALUES (20 , 1 , 90613 , '2015-02-25');
INSERT INTO sample_sales VALUES (20 , 1 , 9684 , '2015-02-26');
INSERT INTO sample_sales VALUES (20 , 1 , 92630 , '2015-02-27');
INSERT INTO sample_sales VALUES (20 , 1 , 5840 , '2015-02-28');

INSERT INTO sample_sales VALUES (30 , 1 , 45926 , '2015-02-01');
INSERT INTO sample_sales VALUES (30 , 1 , 0 , '2015-02-02');
INSERT INTO sample_sales VALUES (30 , 1 , 27764 , '2015-02-03');
INSERT INTO sample_sales VALUES (30 , 0 , 60598 , '2015-02-04');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-02-05');
INSERT INTO sample_sales VALUES (30 , 0 , 28440 , '2015-02-06');
INSERT INTO sample_sales VALUES (30 , 1 , 72284 , '2015-02-07');
INSERT INTO sample_sales VALUES (30 , 1 , 20526 , '2015-02-08');
INSERT INTO sample_sales VALUES (30 , 1 , 29532 , '2015-02-09');
INSERT INTO sample_sales VALUES (30 , 0 , 10150 , '2015-02-10');
INSERT INTO sample_sales VALUES (30 , 1 , 93563 , '2015-02-11');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-02-12');
INSERT INTO sample_sales VALUES (30 , 1 , 51168 , '2015-02-13');
INSERT INTO sample_sales VALUES (30 , 1 , 25085 , '2015-02-14');
INSERT INTO sample_sales VALUES (30 , 1 , 72043 , '2015-02-15');
INSERT INTO sample_sales VALUES (30 , 0 , 89619 , '2015-02-16');
INSERT INTO sample_sales VALUES (30 , 1 , 10380 , '2015-02-17');
INSERT INTO sample_sales VALUES (30 , 0 , 51738 , '2015-02-18');
INSERT INTO sample_sales VALUES (30 , 1 , 0 , '2015-02-19');
INSERT INTO sample_sales VALUES (30 , 1 , 2647 , '2015-02-20');
INSERT INTO sample_sales VALUES (30 , 1 , 9668 , '2015-02-21');
INSERT INTO sample_sales VALUES (30 , 1 , 33424 , '2015-02-22');
INSERT INTO sample_sales VALUES (30 , 1 , 97243 , '2015-02-23');
INSERT INTO sample_sales VALUES (30 , 1 , 79672 , '2015-02-24');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-02-25');
INSERT INTO sample_sales VALUES (30 , 1 , 49683 , '2015-02-26');
INSERT INTO sample_sales VALUES (30 , 1 , 79016 , '2015-02-27');
INSERT INTO sample_sales VALUES (30 , 1 , 88342 , '2015-02-28');

INSERT INTO sample_sales VALUES (10 , 1 , 44566 , '2015-03-01');
INSERT INTO sample_sales VALUES (10 , 1 , 46983 , '2015-03-02');
INSERT INTO sample_sales VALUES (10 , 0 , 66219 , '2015-03-03');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-03-04');
INSERT INTO sample_sales VALUES (10 , 1 , 68811 , '2015-03-05');
INSERT INTO sample_sales VALUES (10 , 0 , 43624 , '2015-03-06');
INSERT INTO sample_sales VALUES (10 , 1 , 44734 , '2015-03-07');
INSERT INTO sample_sales VALUES (10 , 1 , 0 , '2015-03-08');
INSERT INTO sample_sales VALUES (10 , 1 , 90376 , '2015-03-09');
INSERT INTO sample_sales VALUES (10 , 0 , 20938 , '2015-03-10');
INSERT INTO sample_sales VALUES (10 , 1 , 32187 , '2015-03-11');
INSERT INTO sample_sales VALUES (10 , 0 , 32570 , '2015-03-12');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-03-13');
INSERT INTO sample_sales VALUES (10 , 1 , 13724 , '2015-03-14');
INSERT INTO sample_sales VALUES (10 , 0 , 27459 , '2015-03-15');
INSERT INTO sample_sales VALUES (10 , 1 , 6132 , '2015-03-16');
INSERT INTO sample_sales VALUES (10 , 1 , 55860 , '2015-03-17');
INSERT INTO sample_sales VALUES (10 , 1 , 94634 , '2015-03-18');
INSERT INTO sample_sales VALUES (10 , 1 , 47729 , '2015-03-19');
INSERT INTO sample_sales VALUES (10 , 1 , 38330 , '2015-03-20');
INSERT INTO sample_sales VALUES (10 , 1 , 8446 , '2015-03-21');
INSERT INTO sample_sales VALUES (10 , 1 , 74507 , '2015-03-22');
INSERT INTO sample_sales VALUES (10 , 1 , NULL , '2015-03-23');
INSERT INTO sample_sales VALUES (10 , 1 , 40124 , '2015-03-24');
INSERT INTO sample_sales VALUES (10 , 1 , 31355 , '2015-03-25');
INSERT INTO sample_sales VALUES (10 , 1 , 31389 , '2015-03-26');
INSERT INTO sample_sales VALUES (10 , 1 , 0 , '2015-03-27');
INSERT INTO sample_sales VALUES (10 , 1 , 38677 , '2015-03-28');
INSERT INTO sample_sales VALUES (10 , 1 , 44627 , '2015-03-29');
INSERT INTO sample_sales VALUES (10 , 1 , 33345 , '2015-03-30');
INSERT INTO sample_sales VALUES (10 , 1 , 47474 , '2015-03-31');

INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-03-01');
INSERT INTO sample_sales VALUES (20 , 1 , 71800 , '2015-03-02');
INSERT INTO sample_sales VALUES (20 , 0 , 6252 , '2015-03-03');
INSERT INTO sample_sales VALUES (20 , 1 , 71619 , '2015-03-04');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-03-05');
INSERT INTO sample_sales VALUES (20 , 1 , 48120 , '2015-03-06');
INSERT INTO sample_sales VALUES (20 , 0 , 61748 , '2015-03-07');
INSERT INTO sample_sales VALUES (20 , 1 , 9389 , '2015-03-08');
INSERT INTO sample_sales VALUES (20 , 1 , 2419 , '2015-03-09');
INSERT INTO sample_sales VALUES (20 , 0 , 31495 , '2015-03-10');
INSERT INTO sample_sales VALUES (20 , 1 , 83447 , '2015-03-11');
INSERT INTO sample_sales VALUES (20 , 1 , 60454 , '2015-03-12');
INSERT INTO sample_sales VALUES (20 , 0 , 6452 , '2015-03-13');
INSERT INTO sample_sales VALUES (20 , 1 , NULL , '2015-03-14');
INSERT INTO sample_sales VALUES (20 , 1 , 77203 , '2015-03-15');
INSERT INTO sample_sales VALUES (20 , 0 , 94241 , '2015-03-16');
INSERT INTO sample_sales VALUES (20 , 1 , 78148 , '2015-03-17');
INSERT INTO sample_sales VALUES (20 , 1 , 47660 , '2015-03-18');
INSERT INTO sample_sales VALUES (20 , 1 , 0 , '2015-03-19');
INSERT INTO sample_sales VALUES (20 , 1 , 28855 , '2015-03-20');
INSERT INTO sample_sales VALUES (20 , 1 , 33866 , '2015-03-21');
INSERT INTO sample_sales VALUES (20 , 1 , 85337 , '2015-03-22');
INSERT INTO sample_sales VALUES (20 , 1 , 30183 , '2015-03-23');
INSERT INTO sample_sales VALUES (20 , 1 , 52448 , '2015-03-24');
INSERT INTO sample_sales VALUES (20 , 1 , 55193 , '2015-03-25');
INSERT INTO sample_sales VALUES (20 , 1 , 32065 , '2015-03-26');
INSERT INTO sample_sales VALUES (20 , 1 , 0 , '2015-03-27');
INSERT INTO sample_sales VALUES (20 , 1 , 68808 , '2015-03-28');
INSERT INTO sample_sales VALUES (20 , 1 , 9487 , '2015-03-29');
INSERT INTO sample_sales VALUES (20 , 1 , 34636 , '2015-03-30');
INSERT INTO sample_sales VALUES (20 , 1 , 6305 , '2015-03-31');

INSERT INTO sample_sales VALUES (30 , 1 , 7174 , '2015-03-01');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-03-02');
INSERT INTO sample_sales VALUES (30 , 1 , 65617 , '2015-03-03');
INSERT INTO sample_sales VALUES (30 , 0 , 90861 , '2015-03-04');
INSERT INTO sample_sales VALUES (30 , 1 , 56996 , '2015-03-05');
INSERT INTO sample_sales VALUES (30 , 1 , 95234 , '2015-03-06');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-03-07');
INSERT INTO sample_sales VALUES (30 , 1 , 99064 , '2015-03-08');
INSERT INTO sample_sales VALUES (30 , 0 , 30677 , '2015-03-09');
INSERT INTO sample_sales VALUES (30 , 1 , 37471 , '2015-03-10');
INSERT INTO sample_sales VALUES (30 , 1 , 0 , '2015-03-11');
INSERT INTO sample_sales VALUES (30 , 1 , 88966 , '2015-03-12');
INSERT INTO sample_sales VALUES (30 , 0 , 10897 , '2015-03-13');
INSERT INTO sample_sales VALUES (30 , 1 , 8264 , '2015-03-14');
INSERT INTO sample_sales VALUES (30 , 1 , 87756 , '2015-03-15');
INSERT INTO sample_sales VALUES (30 , 1 , 30509 , '2015-03-16');
INSERT INTO sample_sales VALUES (30 , 1 , 96747 , '2015-03-17');
INSERT INTO sample_sales VALUES (30 , 0 , 96699 , '2015-03-18');
INSERT INTO sample_sales VALUES (30 , 1 , 83929 , '2015-03-19');
INSERT INTO sample_sales VALUES (30 , 1 , NULL , '2015-03-20');
INSERT INTO sample_sales VALUES (30 , 1 , 41101 , '2015-03-21');
INSERT INTO sample_sales VALUES (30 , 0 , 81089 , '2015-03-22');
INSERT INTO sample_sales VALUES (30 , 1 , 3559 , '2015-03-23');
INSERT INTO sample_sales VALUES (30 , 1 , 22672 , '2015-03-24');
INSERT INTO sample_sales VALUES (30 , 1 , 99704 , '2015-03-25');
INSERT INTO sample_sales VALUES (30 , 1 , 61867 , '2015-03-26');
INSERT INTO sample_sales VALUES (30 , 1 , 0 , '2015-03-27');
INSERT INTO sample_sales VALUES (30 , 1 , 54080 , '2015-03-28');
INSERT INTO sample_sales VALUES (30 , 1 , 16074 , '2015-03-29');
INSERT INTO sample_sales VALUES (30 , 1 , 32655 , '2015-03-30');
INSERT INTO sample_sales VALUES (30 , 1 , 93136 , '2015-03-31');

DROP TABLE IF EXISTS sample_escape_literals;
CREATE TABLE sample_escape_literals(
  escape_literals CHAR(10) NOT NULL
)ENGINE=INNODB CHARSET=utf8 COMMENT='sample_escape_literals test'
;

INSERT INTO sample_escape_literals VALUES ('016%1'),('016%2'),('016_3'),('016_4'),('016\'5'),('016\'6');


DROP TABLE IF EXISTS sample_employee_nationality_history;
CREATE TABLE sample_employee_nationality_history(
  employee_num INT(11) NOT NULL AUTO_INCREMENT COMMENT '사원번호'
, nationality VARCHAR(20) NOT NULL COMMENT '국적'
, PRIMARY KEY (employee_num)
)ENGINE=INNODB CHARSET=utf8 COMMENT='사원국적이력테이블'
;

INSERT INTO sample_employee_nationality_history VALUES (2  , 'Bahrain'       );
INSERT INTO sample_employee_nationality_history VALUES (4  , 'India'         );
INSERT INTO sample_employee_nationality_history VALUES (106, 'Finland'       );
INSERT INTO sample_employee_nationality_history VALUES (108, 'Finland'       );
INSERT INTO sample_employee_nationality_history VALUES (10 , 'Bhutan'        );
INSERT INTO sample_employee_nationality_history VALUES (12 , 'Iraq'          );
INSERT INTO sample_employee_nationality_history VALUES (14 , 'Iraq'          );
INSERT INTO sample_employee_nationality_history VALUES (16 , 'Australia'     );
INSERT INTO sample_employee_nationality_history VALUES (18 , 'Luxembourg'    );
INSERT INTO sample_employee_nationality_history VALUES (20 , 'Finland'       );
INSERT INTO sample_employee_nationality_history VALUES (22 , 'Luxembourg'    );
INSERT INTO sample_employee_nationality_history VALUES (124, 'India'         );
INSERT INTO sample_employee_nationality_history VALUES (26 , 'Australia'     );
INSERT INTO sample_employee_nationality_history VALUES (28 , 'South Africa'  );
INSERT INTO sample_employee_nationality_history VALUES (30 , 'Australia'     );
INSERT INTO sample_employee_nationality_history VALUES (32 , 'South Africa'  );
INSERT INTO sample_employee_nationality_history VALUES (34 , 'Australia'     );
INSERT INTO sample_employee_nationality_history VALUES (36 , 'India'         );
INSERT INTO sample_employee_nationality_history VALUES (138, 'Lebanon'       );
INSERT INTO sample_employee_nationality_history VALUES (40 , 'Lebanon'       );
INSERT INTO sample_employee_nationality_history VALUES (42 , 'Bhutan'        );
INSERT INTO sample_employee_nationality_history VALUES (44 , 'Mexico'        );
INSERT INTO sample_employee_nationality_history VALUES (46 , 'Lebanon'       );
INSERT INTO sample_employee_nationality_history VALUES (48 , 'Togo'          );
INSERT INTO sample_employee_nationality_history VALUES (50 , 'Bahrain'       );
INSERT INTO sample_employee_nationality_history VALUES (52 , 'Togo'          );
INSERT INTO sample_employee_nationality_history VALUES (54 , 'Luxembourg'    );
INSERT INTO sample_employee_nationality_history VALUES (56 , 'Bhutan'        );
INSERT INTO sample_employee_nationality_history VALUES (58 , 'Ukraine'       );
INSERT INTO sample_employee_nationality_history VALUES (60 , 'Ukraine'       );

#ALTER TABLE sample_department_mapping DROP FOREIGN KEY fk_department_cd;

DROP TABLE IF EXISTS sample_department;
CREATE TABLE sample_department(
  department_cd   INT(11)     NOT NULL AUTO_INCREMENT COMMENT '부서번호'
, department_name VARCHAR(10) NOT NULL                COMMENT '부서이름'
, PRIMARY KEY (department_cd)
)ENGINE=INNODB CHARSET=utf8 COMMENT='부서테이블'
;

INSERT INTO sample_department VALUES (2  , '경영팀'   );
INSERT INTO sample_department VALUES (4  , '인사팀'   );
INSERT INTO sample_department VALUES (6  , '재무팀'   );
INSERT INTO sample_department VALUES (8  , '총무팀'   );
INSERT INTO sample_department VALUES (10 , '영업팀'   );
INSERT INTO sample_department VALUES (12 , '홍보팀'   );
INSERT INTO sample_department VALUES (14 , '지원팀'   );
INSERT INTO sample_department VALUES (16 , '품질팀'   );
INSERT INTO sample_department VALUES (18 , '개발팀'   );
INSERT INTO sample_department VALUES (20 , '운영팀'   );

DROP TABLE IF EXISTS sample_department_mapping;
CREATE TABLE sample_department_mapping(
  mapping_id    INT(11)  NOT NULL AUTO_INCREMENT COMMENT '매핑ID'
, department_cd INT(11)  NULL                    COMMENT '부서번호'
, employee_num  INT(11)  NULL                    COMMENT '사원번호'
, employee_security_code CHAR(7) NOT NULL       COMMENT '사원보안코드'
, use_yn        ENUM('Y', 'N')  NOT NULL DEFAULT 'Y' COMMENT '사용여부'
, PRIMARY KEY (mapping_id)
, UNIQUE KEY  uk_employee_security_code (employee_security_code)
, KEY fk_department_cd (department_cd)
, CONSTRAINT fk_department_cd FOREIGN KEY (department_cd) REFERENCES sample_department (department_cd) ON DELETE CASCADE
, CONSTRAINT chk_secu_code CHECK (LENGTH(employee_security_code) = 7)
)ENGINE=INNODB CHARSET=utf8 COMMENT='부서맵핑'
;


INSERT INTO sample_department_mapping VALUES (1  ,    2    , 2  , 'XDFE001' , 'Y');    
INSERT INTO sample_department_mapping VALUES (2  ,    2    , 4  , 'XDFE002' , 'Y'); 
INSERT INTO sample_department_mapping VALUES (3  ,    2    , 6  , 'XDFE003' , 'Y'); 
INSERT INTO sample_department_mapping VALUES (4  ,    4    , 8  , 'XDFE004' , 'Y'); 
INSERT INTO sample_department_mapping VALUES (5  ,    4    , 10 , 'XDFE005' , 'Y');
INSERT INTO sample_department_mapping VALUES (6  ,    4    , 12 , 'XDFE006' , 'Y');
INSERT INTO sample_department_mapping VALUES (7  ,    6    , 14 , 'XDFE007' , 'Y');
INSERT INTO sample_department_mapping VALUES (8  ,    6    , 16 , 'XDFE008' , 'Y');
INSERT INTO sample_department_mapping VALUES (9  ,    6    , 18 , 'XDFE009' , 'Y');
INSERT INTO sample_department_mapping VALUES (10 ,    8    , 20 , 'XDFE010' , 'Y');
INSERT INTO sample_department_mapping VALUES (11 ,    8    , 22 , 'XDFE011' , 'Y');
INSERT INTO sample_department_mapping VALUES (12 ,    8    , 24 , 'XDFE012' , 'Y');
INSERT INTO sample_department_mapping VALUES (13 ,    10   , 26 , 'XDFE013' , 'Y');
INSERT INTO sample_department_mapping VALUES (14 ,    10   , 28 , 'XDFE014' , 'Y');
INSERT INTO sample_department_mapping VALUES (15 ,    10   , 30 , 'XDFE015' , 'Y');
INSERT INTO sample_department_mapping VALUES (16 ,    10   , 32 , 'XDFE016' , 'Y');
INSERT INTO sample_department_mapping VALUES (17 ,    10   , 34 , 'XDFE017' , 'Y');
INSERT INTO sample_department_mapping VALUES (18 ,    10   , 36 , 'XDFE018' , 'Y');
INSERT INTO sample_department_mapping VALUES (19 ,    10   , 38 , 'XDFE019' , 'Y');
INSERT INTO sample_department_mapping VALUES (20 ,    10   , 40 , 'XDFE020' , 'Y');
INSERT INTO sample_department_mapping VALUES (21 ,    10   , 42 , 'XDFE021' , 'Y');
INSERT INTO sample_department_mapping VALUES (22 ,    10   , 44 , 'XDFE022' , 'Y');
INSERT INTO sample_department_mapping VALUES (23 ,    10   , 46 , 'XDFE023' , 'Y');
INSERT INTO sample_department_mapping VALUES (24 ,    10   , 48 , 'XDFE024' , 'Y');
INSERT INTO sample_department_mapping VALUES (25 ,    10   , 50 , 'XDFE025' , 'Y');
INSERT INTO sample_department_mapping VALUES (26 ,    10   , 52 , 'XDFE026' , 'Y');
INSERT INTO sample_department_mapping VALUES (27 ,    NULL , 54 , 'XDFE027' , 'Y');
INSERT INTO sample_department_mapping VALUES (28 ,    NULL , 56 , 'XDFE028' , 'Y');
INSERT INTO sample_department_mapping VALUES (29 ,    NULL , 58 , 'XDFE029' , 'Y');
INSERT INTO sample_department_mapping VALUES (30 ,    NULL , 60 , 'XDFE030' , 'Y');
INSERT INTO sample_department_mapping VALUES (31 ,    12   , 62 , 'XDFE031' , 'Y');
INSERT INTO sample_department_mapping VALUES (32 ,    12   , 64 , 'XDFE032' , 'Y');
INSERT INTO sample_department_mapping VALUES (33 ,    16   , 66 , 'XDFE033' , 'Y');
INSERT INTO sample_department_mapping VALUES (34 ,    16   , 68 , 'XDFE034' , 'Y');

