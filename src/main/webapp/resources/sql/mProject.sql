--------------------------------------------------------
--  파일이 생성됨 - 수요일-9월-03-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 169 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."RESERVATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARDTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOARDTBL" 
   (	"BNUM" NUMBER, 
	"BTITLE" VARCHAR2(50 BYTE), 
	"BCONTENT" VARCHAR2(200 BYTE), 
	"BWRITER" VARCHAR2(20 BYTE), 
	"BHIT" NUMBER, 
	"BDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MEMBERS" 
   (	"MEMBERID" VARCHAR2(20 BYTE), 
	"MEMBERPW" VARCHAR2(20 BYTE), 
	"MEMBERAGE" NUMBER, 
	"MEMBERDATE" DATE DEFAULT sysdate, 
	"MEMBERNAME" VARCHAR2(20 BYTE), 
	"MEMBEREMAIL" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."RESERVATION" 
   (	"RID" NUMBER, 
	"MEMBERID" VARCHAR2(20 BYTE), 
	"RLOCATION" VARCHAR2(20 BYTE), 
	"R_ROOM" VARCHAR2(20 BYTE), 
	"RDATE" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"RTIME" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYSTEM"."RESERVATION"."RID" IS '예약번호';
   COMMENT ON COLUMN "SYSTEM"."RESERVATION"."MEMBERID" IS '예약자 아이디';
   COMMENT ON COLUMN "SYSTEM"."RESERVATION"."RLOCATION" IS '예약한 지점';
   COMMENT ON COLUMN "SYSTEM"."RESERVATION"."R_ROOM" IS '예약한 방';
REM INSERTING into SYSTEM.BOARDTBL
SET DEFINE OFF;
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (9,'123','123','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (8,'글 수정','수정입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (10,'연습 더미 제목입니다.1','연습 더미 내용입니다.1번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (11,'연습 더미 제목입니다.2','연습 더미 내용입니다.2번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (12,'연습 더미 제목입니다.3','연습 더미 내용입니다.3번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (7,'글쓴 날짜 테스트','글 수정 테스트','tiger',0,to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (13,'연습 더미 제목입니다.4','연습 더미 내용입니다.4번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (14,'연습 더미 제목입니다.5','연습 더미 내용입니다.5번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (15,'연습 더미 제목입니다.6','연습 더미 내용입니다.6번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (16,'연습 더미 제목입니다.7','연습 더미 내용입니다.7번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (17,'연습 더미 제목입니다.8','연습 더미 내용입니다.8번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (18,'연습 더미 제목입니다.9','연습 더미 내용입니다.9번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (19,'연습 더미 제목입니다.10','연습 더미 내용입니다.10번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (20,'연습 더미 제목입니다.11','연습 더미 내용입니다.11번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (21,'연습 더미 제목입니다.12','연습 더미 내용입니다.12번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (22,'연습 더미 제목입니다.13','연습 더미 내용입니다.13번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (23,'연습 더미 제목입니다.14','연습 더미 내용입니다.14번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (24,'연습 더미 제목입니다.15','연습 더미 내용입니다.15번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (25,'연습 더미 제목입니다.16','연습 더미 내용입니다.16번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (26,'연습 더미 제목입니다.17','연습 더미 내용입니다.17번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (27,'연습 더미 제목입니다.18','연습 더미 내용입니다.18번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (28,'연습 더미 제목입니다.19','연습 더미 내용입니다.19번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (29,'연습 더미 제목입니다.20','연습 더미 내용입니다.20번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (30,'연습 더미 제목입니다.21','연습 더미 내용입니다.21번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (31,'연습 더미 제목입니다.22','연습 더미 내용입니다.22번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (32,'연습 더미 제목입니다.23','연습 더미 내용입니다.23번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (33,'연습 더미 제목입니다.24','연습 더미 내용입니다.24번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (34,'연습 더미 제목입니다.25','연습 더미 내용입니다.25번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (35,'연습 더미 제목입니다.26','연습 더미 내용입니다.26번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (36,'연습 더미 제목입니다.27','연습 더미 내용입니다.27번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (37,'연습 더미 제목입니다.28','연습 더미 내용입니다.28번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (38,'연습 더미 제목입니다.29','연습 더미 내용입니다.29번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (39,'연습 더미 제목입니다.30','연습 더미 내용입니다.30번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (40,'연습 더미 제목입니다.31','연습 더미 내용입니다.31번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (41,'연습 더미 제목입니다.32','연습 더미 내용입니다.32번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (42,'연습 더미 제목입니다.33','연습 더미 내용입니다.33번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (43,'연습 더미 제목입니다.34','연습 더미 내용입니다.34번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (44,'연습 더미 제목입니다.35','연습 더미 내용입니다.35번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (45,'연습 더미 제목입니다.36','연습 더미 내용입니다.36번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (46,'연습 더미 제목입니다.37','연습 더미 내용입니다.37번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (47,'연습 더미 제목입니다.38','연습 더미 내용입니다.38번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (48,'연습 더미 제목입니다.39','연습 더미 내용입니다.39번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (49,'연습 더미 제목입니다.40','연습 더미 내용입니다.40번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (50,'연습 더미 제목입니다.41','연습 더미 내용입니다.41번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (51,'연습 더미 제목입니다.42','연습 더미 내용입니다.42번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (52,'연습 더미 제목입니다.43','연습 더미 내용입니다.43번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (53,'연습 더미 제목입니다.44','연습 더미 내용입니다.44번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (54,'연습 더미 제목입니다.45','연습 더미 내용입니다.45번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (55,'연습 더미 제목입니다.46','연습 더미 내용입니다.46번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (56,'연습 더미 제목입니다.47','연습 더미 내용입니다.47번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (57,'연습 더미 제목입니다.48','연습 더미 내용입니다.48번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (58,'연습 더미 제목입니다.49','연습 더미 내용입니다.49번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (59,'연습 더미 제목입니다.50','연습 더미 내용입니다.50번 글 내용입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (60,'연습 더미 제목입니다.51','연습 더미 내용입니다.51번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (61,'연습 더미 제목입니다.52','연습 더미 내용입니다.52번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (62,'연습 더미 제목입니다.53','연습 더미 내용입니다.53번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (63,'연습 더미 제목입니다.54','연습 더미 내용입니다.54번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (64,'연습 더미 제목입니다.55','연습 더미 내용입니다.55번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (65,'연습 더미 제목입니다.56','연습 더미 내용입니다.56번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (66,'연습 더미 제목입니다.57','연습 더미 내용입니다.57번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (67,'연습 더미 제목입니다.58','연습 더미 내용입니다.58번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (68,'연습 더미 제목입니다.59','연습 더미 내용입니다.59번 글 내용입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (69,'연습 더미 제목입니다.60','연습 더미 내용입니다.60번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (70,'연습 더미 제목입니다.61','연습 더미 내용입니다.61번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (71,'연습 더미 제목입니다.62','연습 더미 내용입니다.62번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (72,'연습 더미 제목입니다.63','연습 더미 내용입니다.63번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (73,'연습 더미 제목입니다.64','연습 더미 내용입니다.64번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (74,'연습 더미 제목입니다.65','연습 더미 내용입니다.65번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (75,'연습 더미 제목입니다.66','연습 더미 내용입니다.66번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (76,'연습 더미 제목입니다.67','연습 더미 내용입니다.67번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (77,'연습 더미 제목입니다.68','연습 더미 내용입니다.68번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (78,'연습 더미 제목입니다.69','연습 더미 내용입니다.69번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (79,'연습 더미 제목입니다.70','연습 더미 내용입니다.70번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (80,'연습 더미 제목입니다.71','연습 더미 내용입니다.71번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (81,'연습 더미 제목입니다.72','연습 더미 내용입니다.72번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (82,'연습 더미 제목입니다.73','연습 더미 내용입니다.73번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (83,'연습 더미 제목입니다.74','연습 더미 내용입니다.74번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (84,'연습 더미 제목입니다.75','연습 더미 내용입니다.75번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (85,'연습 더미 제목입니다.76','연습 더미 내용입니다.76번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (86,'연습 더미 제목입니다.77','연습 더미 내용입니다.77번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (87,'연습 더미 제목입니다.78','연습 더미 내용입니다.78번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (88,'연습 더미 제목입니다.79','연습 더미 내용입니다.79번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (89,'연습 더미 제목입니다.80','연습 더미 내용입니다.80번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (90,'연습 더미 제목입니다.81','연습 더미 내용입니다.81번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (91,'연습 더미 제목입니다.82','연습 더미 내용입니다.82번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (92,'연습 더미 제목입니다.83','연습 더미 내용입니다.83번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (93,'연습 더미 제목입니다.84','연습 더미 내용입니다.84번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (94,'연습 더미 제목입니다.85','연습 더미 내용입니다.85번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (95,'연습 더미 제목입니다.86','연습 더미 내용입니다.86번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (96,'연습 더미 제목입니다.87','연습 더미 내용입니다.87번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (97,'연습 더미 제목입니다.88','연습 더미 내용입니다.88번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (98,'연습 더미 제목입니다.89','연습 더미 내용입니다.89번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (99,'연습 더미 제목입니다.90','연습 더미 내용입니다.90번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (100,'연습 더미 제목입니다.91','연습 더미 내용입니다.91번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (101,'연습 더미 제목입니다.92','연습 더미 내용입니다.92번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (102,'연습 더미 제목입니다.93','연습 더미 내용입니다.93번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (103,'연습 더미 제목입니다.94','연습 더미 내용입니다.94번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (104,'연습 더미 제목입니다.95','연습 더미 내용입니다.95번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (105,'연습 더미 제목입니다.96','연습 더미 내용입니다.96번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (106,'연습 더미 제목입니다.97','연습 더미 내용입니다.97번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (107,'연습 더미 제목입니다.98','연습 더미 내용입니다.98번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (108,'연습 더미 제목입니다.99','연습 더미 내용입니다.99번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (109,'연습 더미 제목입니다.100','연습 더미 내용입니다.100번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (110,'연습 더미 제목입니다.101','연습 더미 내용입니다.101번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (111,'연습 더미 제목입니다.102','연습 더미 내용입니다.102번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (112,'연습 더미 제목입니다.103','연습 더미 내용입니다.103번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (113,'연습 더미 제목입니다.104','연습 더미 내용입니다.104번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (114,'연습 더미 제목입니다.105','연습 더미 내용입니다.105번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (115,'연습 더미 제목입니다.106','연습 더미 내용입니다.106번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (116,'연습 더미 제목입니다.107','연습 더미 내용입니다.107번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (117,'연습 더미 제목입니다.108','연습 더미 내용입니다.108번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (118,'연습 더미 제목입니다.109','연습 더미 내용입니다.109번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (119,'연습 더미 제목입니다.110','연습 더미 내용입니다.110번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (120,'연습 더미 제목입니다.111','연습 더미 내용입니다.111번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (121,'연습 더미 제목입니다.112','연습 더미 내용입니다.112번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (122,'연습 더미 제목입니다.113','연습 더미 내용입니다.113번 글 내용입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (123,'연습 더미 제목입니다.114','연습 더미 내용입니다.114번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (124,'연습 더미 제목입니다.115','연습 더미 내용입니다.115번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (125,'연습 더미 제목입니다.116','연습 더미 내용입니다.116번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (126,'연습 더미 제목입니다.117','연습 더미 내용입니다.117번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (127,'연습 더미 제목입니다.118','연습 더미 내용입니다.118번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (128,'연습 더미 제목입니다.119','연습 더미 내용입니다.119번 글 내용입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (129,'연습 더미 제목입니다.120','연습 더미 내용입니다.120번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (130,'연습 더미 제목입니다.121','연습 더미 내용입니다.121번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (131,'연습 더미 제목입니다.122','연습 더미 내용입니다.122번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (132,'연습 더미 제목입니다.123','연습 더미 내용입니다.123번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (133,'연습 더미 제목입니다.124','연습 더미 내용입니다.124번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (134,'연습 더미 제목입니다.125','연습 더미 내용입니다.125번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (135,'연습 더미 제목입니다.126','연습 더미 내용입니다.126번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (136,'연습 더미 제목입니다.127','연습 더미 내용입니다.127번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (137,'연습 더미 제목입니다.128','연습 더미 내용입니다.128번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (138,'연습 더미 제목입니다.129','연습 더미 내용입니다.129번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (139,'연습 더미 제목입니다.130','연습 더미 내용입니다.130번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (140,'연습 더미 제목입니다.131','연습 더미 내용입니다.131번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (141,'연습 더미 제목입니다.132','연습 더미 내용입니다.132번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (142,'연습 더미 제목입니다.133','연습 더미 내용입니다.133번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (143,'연습 더미 제목입니다.134','연습 더미 내용입니다.134번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (144,'연습 더미 제목입니다.135','연습 더미 내용입니다.135번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (145,'연습 더미 제목입니다.136','연습 더미 내용입니다.136번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (146,'연습 더미 제목입니다.137','연습 더미 내용입니다.137번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (147,'연습 더미 제목입니다.138','연습 더미 내용입니다.138번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (148,'연습 더미 제목입니다.139','연습 더미 내용입니다.139번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (149,'연습 더미 제목입니다.140','연습 더미 내용입니다.140번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (150,'연습 더미 제목입니다.141','연습 더미 내용입니다.141번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (151,'연습 더미 제목입니다.142','연습 더미 내용입니다.142번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (152,'연습 더미 제목입니다.143','연습 더미 내용입니다.143번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (153,'연습 더미 제목입니다.144','연습 더미 내용입니다.144번 글 내용입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (154,'연습 더미 제목입니다.145','연습 더미 내용입니다.145번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (155,'연습 더미 제목입니다.146','연습 더미 내용입니다.146번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (156,'연습 더미 제목입니다.147','연습 더미 내용입니다.147번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (157,'연습 더미 제목입니다.148','연습 더미 내용입니다.148번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (158,'연습 더미 제목입니다.149','연습 더미 내용입니다.149번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (159,'연습 더미 제목입니다.150','연습 더미 내용입니다.150번 글 내용입니다.','tiger',1,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (160,'연습 더미 제목입니다.151','연습 더미 내용입니다.151번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (161,'연습 더미 제목입니다.152','연습 더미 내용입니다.152번 글 내용입니다.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (162,'연습 더미 제목입니다.153','연습 더미 내용입니다.153번 글 내용입니다.','tiger',2,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (163,'테스트','1234
','lion99',null,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (164,'테스트','1234
','lion99',null,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (165,'테스트','1234
','lion99',null,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (166,'테스트2','테스트입니다.','lion99',null,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (167,'테스트3','테스트입니다.','lion99',null,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (168,'1234','1234','lion99',null,to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.MEMBERS
SET DEFINE OFF;
Insert into SYSTEM.MEMBERS (MEMBERID,MEMBERPW,MEMBERAGE,MEMBERDATE,MEMBERNAME,MEMBEREMAIL) values ('lion88','123456',23,to_date('25/09/02','RR/MM/DD'),'김사자','lion88@abc.com');
Insert into SYSTEM.MEMBERS (MEMBERID,MEMBERPW,MEMBERAGE,MEMBERDATE,MEMBERNAME,MEMBEREMAIL) values ('lion99','999999',23,to_date('25/09/02','RR/MM/DD'),'사자','lion99@lion.com');
REM INSERTING into SYSTEM.RESERVATION
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Procedure ORA$_SYS_REP_AUTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."ORA$_SYS_REP_AUTH" as
begin
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repschema TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repprop TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_aqcall TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_calldest TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_error TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_destination TO SYS ' ||
                 'WITH GRANT OPTION';
end;

/
