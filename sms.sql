CREATE DATABASE edufet;
USE edufet;
--
-- Definition of table `academicyear_tbl`
--

DROP TABLE IF EXISTS academicyear_tbl;
CREATE SEQUENCE academicyear_tbl_seq;

CREATE TABLE academicyear_tbl (
  yearid int NOT NULL default nextval ('academicyear_tbl_seq'),
  accyear varchar(255) default NULL,
  status varchar(255) default NULL,
  PRIMARY KEY  (yearid)
)  ;

ALTER SEQUENCE academicyear_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `academicyear_tbl`
--

/*!40000 ALTER TABLE `academicyear_tbl` DISABLE KEYS */;
INSERT INTO academicyear_tbl (yearid,accyear,status) VALUES
 (1,'2019','ok');
/*!40000 ALTER TABLE `academicyear_tbl` ENABLE KEYS */;


--
-- Definition of table `classname_tbl`
--

DROP TABLE IF EXISTS classname_tbl;
CREATE SEQUENCE classname_tbl_seq;

CREATE TABLE classname_tbl (
  classid int NOT NULL default nextval ('classname_tbl_seq'),
  classname varchar(255) default NULL,
  status varchar(255) default NULL,
  PRIMARY KEY  (classid)
)  ;

ALTER SEQUENCE classname_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `classname_tbl`
--

/*!40000 ALTER TABLE `classname_tbl` DISABLE KEYS */;
INSERT INTO classname_tbl (classid,classname,status) VALUES
 (1,'one','Running');
/*!40000 ALTER TABLE `classname_tbl` ENABLE KEYS */;


--
-- Definition of table `classroutine_tbl`
--

DROP TABLE IF EXISTS classroutine_tbl;
CREATE SEQUENCE classroutine_tbl_seq;

CREATE TABLE classroutine_tbl (
  routineid int NOT NULL default nextval ('classroutine_tbl_seq'),
  classid int default NULL,
  dayname varchar(255) default NULL,
  periodname varchar(255) default NULL,
  periodtime varchar(255) default NULL,
  secid int default NULL,
  subjectid int default NULL,
  tid int default NULL,
  PRIMARY KEY  (routineid)
) ;

--
-- Dumping data for table `classroutine_tbl`
--

/*!40000 ALTER TABLE `classroutine_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroutine_tbl` ENABLE KEYS */;


--
-- Definition of table `classsection_tbl`
--

DROP TABLE IF EXISTS classsection_tbl;
CREATE SEQUENCE classsection_tbl_seq;

CREATE TABLE classsection_tbl (
  secid int NOT NULL default nextval ('classsection_tbl_seq'),
  classid int default NULL,
  secname varchar(255) default NULL,
  secstatus varchar(255) default NULL,
  PRIMARY KEY  (secid)
)  ;

ALTER SEQUENCE classsection_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `classsection_tbl`
--

/*!40000 ALTER TABLE `classsection_tbl` DISABLE KEYS */;
INSERT INTO classsection_tbl (secid,classid,secname,secstatus) VALUES
 (1,1,'Sec-A','Running');
/*!40000 ALTER TABLE `classsection_tbl` ENABLE KEYS */;


--
-- Definition of table `classteacher_tbl`
--

DROP TABLE IF EXISTS classteacher_tbl;
CREATE SEQUENCE classteacher_tbl_seq;

CREATE TABLE classteacher_tbl (
  assignid int NOT NULL default nextval ('classteacher_tbl_seq'),
  classid int default NULL,
  groupid int default NULL,
  secid int default NULL,
  tid int default NULL,
  yearid int default NULL,
  PRIMARY KEY  (assignid)
) ;

--
-- Dumping data for table `classteacher_tbl`
--

/*!40000 ALTER TABLE `classteacher_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `classteacher_tbl` ENABLE KEYS */;


--
-- Definition of table `examinfo_tbl`
--

DROP TABLE IF EXISTS examinfo_tbl;
CREATE SEQUENCE examinfo_tbl_seq;

CREATE TABLE examinfo_tbl (
  examid int NOT NULL default nextval ('examinfo_tbl_seq'),
  examdate date default NULL,
  examdesc varchar(255) default NULL,
  examtitle varchar(255) default NULL,
  PRIMARY KEY  (examid)
)  ;

ALTER SEQUENCE examinfo_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `examinfo_tbl`
--

/*!40000 ALTER TABLE `examinfo_tbl` DISABLE KEYS */;
INSERT INTO examinfo_tbl (examid,examdate,examdesc,examtitle) VALUES
 (1,'2019-07-02','iii','midtrem');
/*!40000 ALTER TABLE `examinfo_tbl` ENABLE KEYS */;


--
-- Definition of table `exammark_tbl`
--

DROP TABLE IF EXISTS exammark_tbl;
CREATE SEQUENCE exammark_tbl_seq;

CREATE TABLE exammark_tbl (
  markid int NOT NULL default nextval ('exammark_tbl_seq'),
  classid int default NULL,
  examid int default NULL,
  groupid int default NULL,
  secid int default NULL,
  stid int default NULL,
  yearid int default NULL,
  PRIMARY KEY  (markid)
)  ;

ALTER SEQUENCE exammark_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `exammark_tbl`
--

/*!40000 ALTER TABLE `exammark_tbl` DISABLE KEYS */;
INSERT INTO exammark_tbl (markid,classid,examid,groupid,secid,stid,yearid) VALUES
 (1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `exammark_tbl` ENABLE KEYS */;


--
-- Definition of table `guardian_tbl`
--

DROP TABLE IF EXISTS guardian_tbl;
CREATE SEQUENCE guardian_tbl_seq;

CREATE TABLE guardian_tbl (
  profileid int NOT NULL default nextval ('guardian_tbl_seq'),
  contact varchar(255) default NULL,
  emailid varchar(255) default NULL,
  fname varchar(255) default NULL,
  gender varchar(255) default NULL,
  lname varchar(255) default NULL,
  occupation varchar(255) default NULL,
  status varchar(255) default NULL,
  stid int default NULL,
  PRIMARY KEY  (profileid)
) ;

--
-- Dumping data for table `guardian_tbl`
--

/*!40000 ALTER TABLE `guardian_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_tbl` ENABLE KEYS */;


--
-- Definition of table `marksdetails_tbl`
--

DROP TABLE IF EXISTS marksdetails_tbl;
CREATE SEQUENCE marksdetails_tbl_seq;

CREATE TABLE marksdetails_tbl (
  markdetailid int NOT NULL default nextval ('marksdetails_tbl_seq'),
  markgrade varchar(255) default NULL,
  markid int default NULL,
  markobtain varchar(255) default NULL,
  stid int default NULL,
  subjectid int default NULL,
  PRIMARY KEY  (markdetailid)
)  ;

ALTER SEQUENCE marksdetails_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `marksdetails_tbl`
--

/*!40000 ALTER TABLE `marksdetails_tbl` DISABLE KEYS */;
INSERT INTO marksdetails_tbl (markdetailid,markgrade,markid,markobtain,stid,subjectid) VALUES
 (1,'A+',1,'80',1,1);
/*!40000 ALTER TABLE `marksdetails_tbl` ENABLE KEYS */;


--
-- Definition of table `notice_tbl`
--

DROP TABLE IF EXISTS notice_tbl;
CREATE SEQUENCE notice_tbl_seq;

CREATE TABLE notice_tbl (
  noticeid int NOT NULL default nextval ('notice_tbl_seq'),
  description varchar(255) default NULL,
  noticedate date default NULL,
  noticetitle varchar(255) default NULL,
  status varchar(255) default NULL,
  PRIMARY KEY  (noticeid)
) ;

--
-- Dumping data for table `notice_tbl`
--

/*!40000 ALTER TABLE `notice_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_tbl` ENABLE KEYS */;


--
-- Definition of table `payment_tbl`
--

DROP TABLE IF EXISTS payment_tbl;
CREATE SEQUENCE payment_tbl_seq;

CREATE TABLE payment_tbl (
  payid int NOT NULL default nextval ('payment_tbl_seq'),
  description varchar(255) default NULL,
  payammount double precision default NULL,
  paydate date default NULL,
  payofmonth varchar(255) default NULL,
  regid int default NULL,
  yearid int default NULL,
  PRIMARY KEY  (payid)
)  ;

ALTER SEQUENCE payment_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `payment_tbl`
--

/*!40000 ALTER TABLE `payment_tbl` DISABLE KEYS */;
INSERT INTO payment_tbl (payid,description,payammount,paydate,payofmonth,regid,yearid) VALUES
 (1,'a',500,'2019-06-28','June',1,1);
/*!40000 ALTER TABLE `payment_tbl` ENABLE KEYS */;


--
-- Definition of table `stgroup_tbl`
--

DROP TABLE IF EXISTS stgroup_tbl;
CREATE SEQUENCE stgroup_tbl_seq;

CREATE TABLE stgroup_tbl (
  groupid int NOT NULL default nextval ('stgroup_tbl_seq'),
  groupname varchar(255) default NULL,
  status varchar(255) default NULL,
  PRIMARY KEY  (groupid)
)  ;

ALTER SEQUENCE stgroup_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `stgroup_tbl`
--

/*!40000 ALTER TABLE `stgroup_tbl` DISABLE KEYS */;
INSERT INTO stgroup_tbl (groupid,groupname,status) VALUES
 (1,'Commarce','ok');
/*!40000 ALTER TABLE `stgroup_tbl` ENABLE KEYS */;


--
-- Definition of table `studentattendance_tbl`
--

DROP TABLE IF EXISTS studentattendance_tbl;
CREATE SEQUENCE studentattendance_tbl_seq;

CREATE TABLE studentattendance_tbl (
  atid int NOT NULL default nextval ('studentattendance_tbl_seq'),
  atdate date default NULL,
  atstatus varchar(255) default NULL,
  classid int default NULL,
  groupid int default NULL,
  regid int default NULL,
  secid int default NULL,
  stid int default NULL,
  PRIMARY KEY  (atid)
)  ;

ALTER SEQUENCE studentattendance_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `studentattendance_tbl`
--

/*!40000 ALTER TABLE `studentattendance_tbl` DISABLE KEYS */;
INSERT INTO studentattendance_tbl (atid,atdate,atstatus,classid,groupid,regid,secid,stid) VALUES
 (1,'2019-06-30','present',1,1,1,1,1);
/*!40000 ALTER TABLE `studentattendance_tbl` ENABLE KEYS */;


--
-- Definition of table `studentinfo_tbl`
--

DROP TABLE IF EXISTS studentinfo_tbl;
CREATE SEQUENCE studentinfo_tbl_seq;

CREATE TABLE studentinfo_tbl (
  stid int NOT NULL default nextval ('studentinfo_tbl_seq'),
  parmanentaddress varchar(255) default NULL,
  presentaddress varchar(255) default NULL,
  stage varchar(255) default NULL,
  stcontact varchar(255) default NULL,
  stdob date default NULL,
  stfathername varchar(255) default NULL,
  stgender varchar(255) default NULL,
  stmothername varchar(255) default NULL,
  stname varchar(255) default NULL,
  ststatus varchar(255) default NULL,
  emailid varchar(255) default NULL,
  PRIMARY KEY  (stid)
)  ;

ALTER SEQUENCE studentinfo_tbl_seq RESTART WITH 3;

--
-- Dumping data for table `studentinfo_tbl`
--

/*!40000 ALTER TABLE `studentinfo_tbl` DISABLE KEYS */;
INSERT INTO studentinfo_tbl (stid,parmanentaddress,presentaddress,stage,stcontact,stdob,stfathername,stgender,stmothername,stname,ststatus,emailid) VALUES
 (1,'Jasper: bebeto, P.O: Malingo, P.S: Buea, Dist: Comilla','Kha-185, Middle Badda, Dhaka-1212','10','01670015319','1998-01-15','Nazrul Islam','Male','Parveen Akter','Md. Rakib Hassan','Reguler','rakib@gmail.com'),
 (2,'Comilla','Shonir Akhra','10','01670015318','1998-01-01','N/A','Male','N/A','Al-Amin Shakil','Reguler','shakil@gmail.com');
/*!40000 ALTER TABLE `studentinfo_tbl` ENABLE KEYS */;


--
-- Definition of table `studentregistration_tbl`
--

DROP TABLE IF EXISTS studentregistration_tbl;
CREATE SEQUENCE studentregistration_tbl_seq;

CREATE TABLE studentregistration_tbl (
  regid int NOT NULL default nextval ('studentregistration_tbl_seq'),
  classid int default NULL,
  groupid int default NULL,
  regdate date default NULL,
  secid int default NULL,
  stid int default NULL,
  stroll varchar(255) default NULL,
  yearid int default NULL,
  PRIMARY KEY  (regid)
)  ;

ALTER SEQUENCE studentregistration_tbl_seq RESTART WITH 2;

--
-- Dumping data for table `studentregistration_tbl`
--

/*!40000 ALTER TABLE `studentregistration_tbl` DISABLE KEYS */;
INSERT INTO studentregistration_tbl (regid,classid,groupid,regdate,secid,stid,stroll,yearid) VALUES
 (1,1,1,'2019-06-04',1,1,'101',1);
/*!40000 ALTER TABLE `studentregistration_tbl` ENABLE KEYS */;


--
-- Definition of table `subjects_tbl`
--

DROP TABLE IF EXISTS subjects_tbl;
CREATE SEQUENCE subjects_tbl_seq;

CREATE TABLE subjects_tbl (
  subjectid int NOT NULL default nextval ('subjects_tbl_seq'),
  status varchar(255) default NULL,
  subjectcode varchar(255) default NULL,
  subjectname varchar(255) default NULL,
  PRIMARY KEY  (subjectid)
)  ;

ALTER SEQUENCE subjects_tbl_seq RESTART WITH 3;

--
-- Dumping data for table `subjects_tbl`
--

/*!40000 ALTER TABLE `subjects_tbl` DISABLE KEYS */;
INSERT INTO subjects_tbl (subjectid,status,subjectcode,subjectname) VALUES
 (1,'ok','101','Math'),
 (2,'ok','102','English');
/*!40000 ALTER TABLE `subjects_tbl` ENABLE KEYS */;


--
-- Definition of table `teacherinfo_tbl`
--

DROP TABLE IF EXISTS teacherinfo_tbl;
CREATE SEQUENCE teacherinfo_tbl_seq;

CREATE TABLE teacherinfo_tbl (
  tid int NOT NULL default nextval ('teacherinfo_tbl_seq'),
  subjectid int default NULL,
  subjectname varchar(255) default NULL,
  taddress varchar(255) default NULL,
  tcontact varchar(255) default NULL,
  temail varchar(255) default NULL,
  tgender varchar(255) default NULL,
  tjoindate date default NULL,
  tname varchar(255) default NULL,
  tstatus varchar(255) default NULL,
  PRIMARY KEY  (tid)
);

DROP TABLE IF EXISTS user_tbl;
CREATE TABLE user_tbl (
  emailid varchar(255) NOT NULL,
  phone varchar(255) default NULL,
  username varchar(255) default NULL,
  PRIMARY KEY  (emailid)
) ;

--
-- Dumping data for table `user_tbl`
--

/*!40000 ALTER TABLE `user_tbl` DISABLE KEYS */;
INSERT INTO user_tbl (emailid,phone,username) VALUES
 ('admin@sms.com','01670015319','Percy'),
 ('student@gmail.com','01830056388','Jasper'),
 ('test@gmail.com','01830056387','Pops');
/*!40000 ALTER TABLE `user_tbl` ENABLE KEYS */;


--
-- Definition of table `userrole_tbl`
--

DROP TABLE IF EXISTS userrole_tbl;
CREATE TABLE userrole_tbl (
  emailid varchar(255) NOT NULL,
  password varchar(255) default NULL,
  role varchar(255) default NULL,
  status varchar(255) default NULL,
  PRIMARY KEY  (emailid)
) ;

--
-- Dumping data for table `userrole_tbl`
--

/*!40000 ALTER TABLE `userrole_tbl` DISABLE KEYS */;
INSERT INTO userrole_tbl (emailid,password,role,status) VALUES
 ('admin@sms.com','123','ROLE_ADMIN','True'),
 ('student@gmail.com','123','ROLE_STUDENT','True'),
 ('test@gmail.com','123','ROLE_TEACHER','True');
