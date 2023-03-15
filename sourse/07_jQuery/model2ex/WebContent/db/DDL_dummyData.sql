------------ MVC_MEMBER----------------
DROP TABLE MVC_MEMBER CASCADE CONSTRAINTS;
CREATE TABLE MVC_MEMBER(
    mID VARCHAR2(30) PRIMARY KEY,
    mPW VARCHAR2(30) NOT NULL,
    mNAME VARCHAR2(30) NOT NULL,
    mEMAIL VARCHAR2(30) UNIQUE,
    mPHOTO VARCHAR2(30) NOT NULL,
    mBIRTH DATE,
    mADDRESS VARCHAR2(300),
    mRDATE DATE DEFAULT SYSDATE NOT NULL
);
-- DUMMY DATA
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS, MRDATE)
    VALUES ('a', 'a', '홍', 'a@a.com', 'NOIMG.png', '1999-01-01', '서울', '2000-12-12');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS, MRDATE)
    VALUES ('b', 'b', '김', 'b@b.com', 'NOIMG.png', '1999-01-01', '서울', '2000-12-12');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('gayun','1','김가연','gayun@naver.com','gayun.jpg','1972/09/09','광주광역시');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('gico','1','지코','gico@naver.com','gico.jpg','1992/09/14','서울시');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('go','1','고소영','go@naver.com','go.jpg','1972/10/06','서울시');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('ham','1','함소원','ham@naver.com','ham.jpg','1976/06/16','서울시');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('han','1','한지민','han@naver.com','han.jpg','1982/11/05','서울시');
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('jang','1','장동건',null,'jang.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('jo','1','조현우',null,'jo.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('kang','1','강동원',null,'kang.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('kim','1','김태희',null,'kim.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('lee','1','이선빈',null,'lee.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('lim','1','임요한',null,'lim.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('park','1','박보검',null,'park.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('rain','1','비',null,'rain.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('sgy','1','송가연',null,'sgy.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('son','1','손흥민',null,'son.jpg',null,null);
INSERT INTO MVC_MEMBER (MID, MPW, MNAME, MEMAIL, MPHOTO, MBIRTH, MADDRESS)
    VALUES ('song','1','송중기',null,'song.jpg',null,null);
SELECT * FROM MVC_MEMBER;

------------ FILEBOARD----------------
DROP TABLE FILEBOARD;
DROP SEQUENCE FILEBOARD_SEQ;
-- CREATE TABLE
CREATE TABLE FILEBOARD(
    FID NUMBER(6) PRIMARY KEY,
    MID VARCHAR2(30) REFERENCES MVC_MEMBER (MID),
    FTITLE VARCHAR2(100) NOT NULL,
    FCONTENT VARCHAR2(4000),
    FFILENAME VARCHAR2(100) NOT NULL,
    FRDATE DATE DEFAULT SYSDATE NOT NULL,
    FHIT NUMBER(6) DEFAULT 0,
    FGROUP NUMBER(6),
    FSTEP NUMBER(6),
    FINDENT NUMBER(6),
    FIP VARCHAR2(30)
);
-- CREATE SEQUENCE
CREATE SEQUENCE FILEBOARD_SEQ
    MAXVALUE 999999
    NOCACHE
    NOCYCLE;
-- DUMMY DATA
INSERT INTO FILEBOARD (FID, MID, FTITLE, FCONTENT, FFILENAME, FGROUP, FSTEP, FINDENT, FIP) VALUES
    (FILEBOARD_SEQ.NEXTVAL, 'a', '제목a', 'a본문', 'NOIMG.png', FILEBOARD_SEQ.CURRVAL, 0, 0, '192.0.0.1');
INSERT INTO FILEBOARD (FID, MID, FTITLE, FCONTENT, FFILENAME, FGROUP, FSTEP, FINDENT, FIP) VALUES
    (FILEBOARD_SEQ.NEXTVAL, 'b', '제목2', '2본문', 'NOIMG.png', FILEBOARD_SEQ.CURRVAL, 0, 0, '192.0.0.1');
INSERT INTO FILEBOARD (FID, MID, FTITLE, FCONTENT, FFILENAME, FGROUP, FSTEP, FINDENT, FIP) VALUES
    (FILEBOARD_SEQ.NEXTVAL, 'go', '제목3', '3본문', 'NOIMG.png', FILEBOARD_SEQ.CURRVAL, 0, 0, '192.0.0.1');
SELECT * FROM FILEBOARD;
------------ ADMIN----------------
DROP TABLE ADMIN;
-- CREATE TABLE
CREATE TABLE ADMIN(
    aID VARCHAR2(30) PRIMARY KEY,
    aPW VARCHAR2(30) NOT NULL,
    aNAME VARCHAR2(30) NOT NULL
);
INSERT INTO ADMIN VALUES ('admin', '1', '관리');
COMMIT;