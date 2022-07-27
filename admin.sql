/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.7-beta-nt : Database - overalldb
*********************************************************************
Server version : 5.0.7-beta-nt
*/


create database if not exists `overalldb`;

USE `overalldb`;

/*Table structure for table `admin_notification_tbl` */

DROP TABLE IF EXISTS `admin_notification_tbl`;

CREATE TABLE `admin_notification_tbl` (
  `ID` int(100) NOT NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_notification_tbl` */

insert into `admin_notification_tbl` values 
(2,'Pending'),
(3,'Pending'),
(4,'Pending');

/*Table structure for table `client_account` */

DROP TABLE IF EXISTS `client_account`;

CREATE TABLE `client_account` (
  `id` int(11) NOT NULL auto_increment,
  `Lastname` char(50) default NULL,
  `Firstname` char(50) default NULL,
  `Mi` char(15) default NULL,
  `Email` varchar(150) default NULL,
  `Contact` bigint(50) default NULL,
  `username` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `client_account` */

insert into `client_account` values 
(10001,'John Kirst','Pumento','R','Jhorie.292214@yahoo.com',639959941868,'Qwertykey29','Pumento29');

/*Table structure for table `document_archive` */

DROP TABLE IF EXISTS `document_archive`;

CREATE TABLE `document_archive` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_archive` */

/*Table structure for table `document_request` */

DROP TABLE IF EXISTS `document_request`;

CREATE TABLE `document_request` (
  `Request_ID` int(50) NOT NULL,
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  PRIMARY KEY  (`Request_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_request` */

insert into `document_request` values 
(1,'DOCUMENT','DOCUMENT',NULL,'wawa','February 05,  2019','zxc',NULL,'01:19: AM','PENDING'),
(2,'CONTRACT','Employment agreement',NULL,'New Employee','February 05,  2019','Ryan',NULL,'03:55: PM','PENDING');

/*Table structure for table `document_request_approved` */

DROP TABLE IF EXISTS `document_request_approved`;

CREATE TABLE `document_request_approved` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_request_approved` */

insert into `document_request_approved` values 
('CERTIFICATE','ARCA','ASD','ASDD','ASDS','JANDOG','ADS','DAS','DAS','DAS'),
('','jLabel196','','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'SENT'),
('','jLabel196','','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'Approved'),
('','jLabel196','','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'Approved'),
('','jLabel196','','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'SENT'),
('','jLabel196','C:\\Users\\ACER\\Desktop\\SYSTEM PRINT\\cert1.pdf','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'SENT'),
('','jLabel196','C:\\Users\\ACER\\Desktop\\SYSTEM PRINT\\contract sample 1.pdf','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'SENT'),
('','jLabel196','C:\\Users\\ACER\\Documents\\RODANTE W.docx','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'SENT'),
('','jLabel196','C:\\Users\\ACER\\Desktop\\SYSTEM PRINT\\1.pdf','jLabel196','jLabel196','jLabel196',NULL,NULL,NULL,'SENT'),
('CERTIFICATE','ARCA','C:\\Users\\ACER\\Desktop\\SYSTEM PRINT\\cert1.pdf','1122','ASDD','ASDS',NULL,NULL,NULL,'JANDOG'),
('CERTIFICATE','ARCA','','1122','ASDD','ASDS',NULL,NULL,NULL,'JANDOG'),
('CERTIFICATE','ARCA','','1122','ASDD','ASDS',NULL,NULL,NULL,'JANDOG'),
('CERTIFICATE','ARCA','','1122','ASDD','ASDS',NULL,NULL,NULL,'JANDOG');

/*Table structure for table `document_request_archive` */

DROP TABLE IF EXISTS `document_request_archive`;

CREATE TABLE `document_request_archive` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_request_archive` */

/*Table structure for table `document_tracking` */

DROP TABLE IF EXISTS `document_tracking`;

CREATE TABLE `document_tracking` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_tracking` */

insert into `document_tracking` values 
('CONTRACT',NULL,'C:\\Users\\ACER\\Documents\\lo.jpg',NULL,'January 25,  2019','Bryan Jandog','CTR10001',NULL,NULL,'SENT'),
('MOA','ROLDAN','C:\\Users\\ACER\\Desktop\\EMPLY.pdf','DASD','ASD','ROLDAN','CTR10001',NULL,NULL,'SENT'),
('CONTRACT','Employment agreement','C:\\Users\\ACER\\Documents\\huwaaww.jpg','Wala lang naman','February 01,  2019','Adrian Acebo','CTR10001',NULL,NULL,'SENT'),
('CONTRACT','Loan contract','C:\\Users\\ACER\\Documents\\damn.jpg','G-gg-gawin nya na daw','February 01,  2019','Bryan Gonzaga','CTR10001',NULL,NULL,'SENT'),
('CONTRACT','Employment agreement','C:\\Users\\ACER\\Documents\\damn.jpg','tto seee ','February 02,  2019','Arxca','CTR10001',NULL,NULL,'SENT');

/*Table structure for table `employeeinfo` */

DROP TABLE IF EXISTS `employeeinfo`;

CREATE TABLE `employeeinfo` (
  `employee_no` int(50) NOT NULL auto_increment,
  `first_name` varchar(50) default NULL,
  `last_name` varchar(50) default NULL,
  `middle_name` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `dateof_birth` varchar(50) default NULL,
  `placeof_birth` varchar(50) default NULL,
  `age` int(50) default NULL,
  `civil_status` varchar(50) default NULL,
  `religion` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `employment_status` varchar(50) default NULL,
  `employment_date` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `nationality` varchar(50) default NULL,
  `contact_no` int(50) default NULL,
  `address` varchar(50) default NULL,
  `language_spoken` varchar(50) default NULL,
  `emergencycontact_person` varchar(50) default NULL,
  `contact_person` int(50) default NULL,
  `elementary` varchar(50) default NULL,
  `school_year` int(50) default NULL,
  `high_school` varchar(50) default NULL,
  `school_year1` int(50) default NULL,
  `college` varchar(50) default NULL,
  `school_year2` int(50) default NULL,
  `father_name` varchar(50) default NULL,
  `occupation` varchar(50) default NULL,
  `mother_name` varchar(50) default NULL,
  `occupation1` varchar(50) default NULL,
  `imagepic` blob,
  PRIMARY KEY  (`employee_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employeeinfo` */

insert into `employeeinfo` values 
(1,'ben','hairani','d','male','02/06/1996','jolo sulu',22,'single','islam','regular employee','DDSAD','ddadd','ADMINISTRATIVE DEPARTMENT','pilipino',93243434,'jfjFHD','FGHD','GFDH',432,'GFJDSFJ',423,'GFJDKG',4332,'GJFDGK',432,'GGGJ','GDF','FWF','FDS',NULL),
(2,'dd','dd','dd','female','02/06/1996','dd',22,'singe','christian','regular employee','dddd','ddd','ADMINISTRATIVE DEPARTMENT','dd',3232,'dd','','dsad',0,'d',0,'d',0,'d',0,'d','d','d','d',''),
(3,'dd','dd','dd','female','323323','dd',22,'33dd','dd','contractual employee','dd','dd','HUMAN RESOURCE DEPARTMENT','dd',0,'dd','dd','dd',0,'dd',0,'dd',0,'dd',0,'d','d','d','d',''),
(4,'asda','dsad','dad','female','3232','dd',22,'44dd','da','casual','dsa','das','HUMAN RESOURCE DEPARTMENT','dad',0,'da','da','da',0,'',0,'',0,'',0,'','','','',''),
(5,'dads','sdad','dsad','male','asd','da',0,'sda','dsa','sad','sd','dsa','ADMINISTRATIVE DEPARTMENT','da',0,'da','da','da',0,'wd',0,'d',0,'d',0,'d','d','d','d',''),
(6,'dad','dad','das','male','dasds','eee',0,'sdad','dsa','a','dsa','dsa','ADMINISTRATIVE DEPARTMENT','ds',0,'d','d','d',0,'d',0,'d',0,'d',0,'d','d','d','d',''),
(7,'d','dd','d','male','d','d',0,'d','d','d','d','d','FINANCE DEPARTMENT','dddd',0,'d','d','d',0,'d',0,'d',0,'d',0,'dd','d','d','d',''),
(8,'','','','','','',0,'','','','','','CORE DEPARTMENT','',0,'','','',0,'',0,'',0,'',0,'','','','',''),
(9,'','','','','','',0,'','','','','','ADMINISTRATIVE DEPARTMENT','',0,'','','',0,'',0,'',0,'',0,'','','','',''),
(10,'','','','','','',0,'','','','','','ADMINISTRATIVE DEPARTMENT','',0,'','','',0,'',0,'',0,'',0,'','','','',''),
(11,'','','','','','',0,'','','','','','ADMINISTRATIVE DEPARTMENT','',0,'','','',0,'',0,'',0,'',0,'','','','','');

/*Table structure for table `facility_request` */

DROP TABLE IF EXISTS `facility_request`;

CREATE TABLE `facility_request` (
  `Reservation_No` int(50) default NULL,
  `Employee_name` char(50) default NULL,
  `Contact` varchar(11) default NULL,
  `Department` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Type_of_facility` varchar(50) default NULL,
  `Facility_Name` varchar(50) default NULL,
  `No_of_person` varchar(50) default NULL,
  `Date_Start` date default NULL,
  `Date_End` date default NULL,
  `Time_Start` time default NULL,
  `Time_End` time default NULL,
  `Status` varchar(100) default NULL,
  `DateRequest` varchar(50) default NULL,
  `TimeRequest` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_request` */

insert into `facility_request` values 
(2,'Arca','09129292929','ADMIN','Meeting','Conference Room','VIP','3','0000-00-00',NULL,NULL,NULL,'Reserved','January 16,  2019','05:04: PM'),
(4,'roldan','22111111111','ADMIN','sdada','Conference Room','C ROOM2','1','0000-00-00',NULL,NULL,NULL,'Reserved','January 16,  2019','08:03: PM'),
(6,'bobi aaad','21122222222','ADMIN','asaada','Conference Room','C ROOM1','22','0000-00-00',NULL,NULL,NULL,'Reserved','January 16,  2019','08:03: PM');

/*Table structure for table `facility_reservation` */

DROP TABLE IF EXISTS `facility_reservation`;

CREATE TABLE `facility_reservation` (
  `Reservation_No` int(50) default NULL,
  `Employee_name` char(50) default NULL,
  `Contact` varchar(11) default NULL,
  `Department` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Type_of_facility` varchar(50) default NULL,
  `Facility_Name` varchar(50) default NULL,
  `No_of_person` varchar(50) default NULL,
  `Date_Start` varchar(50) default NULL,
  `Date_End` varchar(50) default NULL,
  `Time_Start` varchar(50) default NULL,
  `Time_End` varchar(50) default NULL,
  `Status` varchar(100) default NULL,
  `DateRequest` varchar(50) default NULL,
  `TimeRequest` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_reservation` */

insert into `facility_reservation` values 
(2,'Arca','09129292929','ADMIN','Meeting','Conference Room','VIP','3','0000-00-00',NULL,NULL,NULL,'Reserved','January 16,  2019','05:04: PM'),
(3,'hahah','909090999','HR DEPARTMENT','bab','Conference Room','C ROOM1','9','0000-00-00',NULL,NULL,NULL,'Reserved','January 16,  2019','08:02: PM'),
(6,'bobi aaad','21122222222','ADMIN','asaada','Conference Room','C ROOM1','22','0000-00-00',NULL,NULL,NULL,'Reserved','January 16,  2019','08:03: PM'),
(7,'Rhey','09199292922','FINANCE DEPARTMENT','Popop','Conference Room','VIP','8','0000-00-00',NULL,NULL,NULL,'Reserved','January 17,  2019','11:49: AM'),
(8,'Ronald','09292811111','LOGISTIC DEPARTMENT','Meeting','Conference Room','C ROOM1','5','0000-00-00',NULL,NULL,NULL,'Reserved','January 17,  2019','07:13: PM'),
(9,'Bryan Jandog','09282881881','ADMIN','Training ','Training Room','T ROOM2','55','0000-00-00',NULL,NULL,NULL,'Reserved','January 26,  2019','04:22: AM'),
(10,'emman','09127277112','ADMIN','tambay','Conference Room','VIP','2','0000-00-00',NULL,NULL,NULL,'Request','February 01,  2019','05:08: PM'),
(3,'hahah','909090999',NULL,'bab',NULL,'C ROOM1',NULL,'0000-00-00',NULL,NULL,NULL,'Reserved',NULL,NULL),
(11,'Arca eugene','09182828288','FINANCE DEPARTMENT','Wala','Conference Room','VIP','9','0000-00-00',NULL,NULL,NULL,'Request','February 05,  2019','12:32: AM'),
(12,'Rhey Rapacon','09292992299','FINANCE DEPARTMENT','Bobo','Training Room','T ROOM1','2','0000-00-00',NULL,NULL,NULL,'Reserved','February 05,  2019','03:13: AM'),
(13,'Arca','09199191919','FINANCE DEPARTMENT','WAla','Seminar Room','S ROOM1','9','0000-00-00',NULL,NULL,NULL,'Reserved','February 05,  2019','03:13: AM'),
(14,'apla','0922828','HR DEPARTMENT','la','Conference Room','','9','February 28, 2019','February 20, 2019','2:30am','1:30am','Reserved','February 05,  2019','03:33: PM'),
(15,'Ryan','00912390','HR DEPARTMENT','Mage','Conference Room','C ROOM1','13','February 14, 2019','February 22, 2019','1:00am','3:00am','Reserved','February 05,  2019','03:48: PM');

/*Table structure for table `facility_reservation_cancel` */

DROP TABLE IF EXISTS `facility_reservation_cancel`;

CREATE TABLE `facility_reservation_cancel` (
  `Reservation_No` int(50) default NULL,
  `Employee_name` char(50) default NULL,
  `Contact` varchar(11) default NULL,
  `Department` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Type_of_facility` varchar(50) default NULL,
  `Facility_Name` varchar(50) default NULL,
  `No_of_person` varchar(50) default NULL,
  `Date_Start` date default NULL,
  `Date_End` date default NULL,
  `Time_Start` time default NULL,
  `Time_End` time default NULL,
  `Status` varchar(100) default NULL,
  `DateRequest` varchar(50) default NULL,
  `TimeRequest` varchar(50) default NULL,
  `Reason` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_reservation_cancel` */

insert into `facility_reservation_cancel` values 
(3,'Rhia','09199292929',NULL,'ADMIN',NULL,'Wala',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'jjjjjj'),
(6,'Renz Quinday','09199191919',NULL,'FINANCE DEPARTMENT',NULL,'Checking',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'wala'),
(4,'Renz','09171717177','-','Monitor','','VIP','','0000-00-00',NULL,NULL,NULL,'CANCEL','January 16,  2019','07:56: PM','aaaa'),
(5,'Michael','09304811821',NULL,'ADMIN',NULL,'Supervise',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'Wala'),
(5,'arca ahhah','121112',NULL,'FINANCE DEPARTMENT',NULL,'aaaaaaaaa',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'cancel ko na lang'),
(7,'tae','haha',NULL,'January 24, 2019',NULL,'walada',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'vbobo'),
(7,'hahabobo','12222222222',NULL,'January 17, 2019',NULL,'malit',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'ayoko sa kanya'),
(4,'roldan','22111111111',NULL,'January 25, 2019',NULL,'sdada',NULL,'0000-00-00',NULL,NULL,NULL,'CANCEL',NULL,NULL,'Tae');

/*Table structure for table `legal_complains_tbl` */

DROP TABLE IF EXISTS `legal_complains_tbl`;

CREATE TABLE `legal_complains_tbl` (
  `Title` varchar(50) default NULL,
  `Firstname` char(50) default NULL,
  `Lastname` char(50) default NULL,
  `Middlename` char(50) default NULL,
  `MobileNo` char(50) default NULL,
  `EmailAdd` varchar(50) default NULL,
  `Complain_type` char(50) default NULL,
  `DateofComplains` varchar(50) default NULL,
  `Type_of_Case` varchar(50) default NULL,
  `Status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `legal_complains_tbl` */

insert into `legal_complains_tbl` values 
('','','','','','','','','','');

/*Table structure for table `legal_request` */

DROP TABLE IF EXISTS `legal_request`;

CREATE TABLE `legal_request` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `File` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `legal_request` */

insert into `legal_request` values 
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
('CERTIFICATE','ARCA','1122','ASDD','ASDS','JANDOG','1212','Jandog','12:00','DAS',NULL),
('CERTIFICATE','ARCA','1122','ASDD','ASDS','JANDOG','1212','Jandog','12:00','DAS',NULL),
('CONTRACT','Property contract',NULL,'Kailangan sa asset','February 05,  2019','Eugene Quinday',NULL,'che',NULL,'PENDING',NULL),
('CONTRACT','Property contract',NULL,'Kailangan sa asset','February 05,  2019','Eugene Quinday',NULL,'che',NULL,'PENDING',NULL),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','sample 1',NULL,'employee','date','apeng',NULL,'Caller',NULL,'okay','C:\\Users\\ACER\\Desktop\\SYSTEM PRINT\\cert2.pdf'),
('CERTIFICATE','sample 1',NULL,'employee','date','apeng',NULL,'Caller',NULL,'okay',''),
('CERTIFICATE','sample 1',NULL,'employee','date','apeng',NULL,'Caller',NULL,'okay','');

/*Table structure for table `legal_request_approval` */

DROP TABLE IF EXISTS `legal_request_approval`;

CREATE TABLE `legal_request_approval` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `File` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `legal_request_approval` */

insert into `legal_request_approval` values 
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
('CERTIFICATE','ARCA','1122','ASDD','ASDS','JANDOG','1212','Jandog','12:00','DAS',NULL),
('CERTIFICATE','ARCA','1122','ASDD','ASDS','JANDOG','1212','Jandog','12:00','DAS',NULL),
('CONTRACT','Property contract',NULL,'Kailangan sa asset','February 05,  2019','Eugene Quinday',NULL,'che',NULL,'PENDING',NULL),
('CONTRACT','Property contract',NULL,'Kailangan sa asset','February 05,  2019','Eugene Quinday',NULL,'che',NULL,'PENDING',NULL),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','ARCA',NULL,'1122','ASDD','ASDS',NULL,'Caller',NULL,'JANDOG',''),
('CERTIFICATE','sample 1',NULL,'employee','date','apeng',NULL,'Caller',NULL,'okay','C:\\Users\\ACER\\Desktop\\SYSTEM PRINT\\cert2.pdf'),
('CERTIFICATE','sample 1',NULL,'employee','date','apeng',NULL,'Caller',NULL,'okay',''),
('CERTIFICATE','sample 1',NULL,'employee','date','apeng',NULL,'Caller',NULL,'okay','');

/*Table structure for table `login_info` */

DROP TABLE IF EXISTS `login_info`;

CREATE TABLE `login_info` (
  `ID` int(11) NOT NULL auto_increment,
  `Lastname` char(50) default NULL,
  `Firstname` char(50) default NULL,
  `MI` char(15) default NULL,
  `Contact` bigint(20) default NULL,
  `Emal` varchar(150) default NULL,
  `Username` varchar(100) default NULL,
  `Password` varchar(100) default NULL,
  `Position` char(50) default NULL,
  `Module` char(100) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_info` */

insert into `login_info` values 
(10001,'Pumento','John Kirst','R',12341823,'12312312@123.com','Core2_1','Account','Employee','Account Excutive'),
(10003,'','','',0,'','Core2_2','Passvisa','Employee','Passport & Visa'),
(10004,'','','',0,'','Core2_3','Schedulerate','Employee','Schedule & Rate'),
(10005,'','','',0,'','Core2_4','CRM','Employee','CRM'),
(10006,'','','',0,'','Core1_1','Tourcreation','Employee','Tour Creation & Cofiguration'),
(10007,'','','',0,'','Core1_2','Customeritenerary','Employee','CTIM'),
(10008,'','','',0,'','Core1_3','Transportbooking','Employee','Transport Booking'),
(10009,'','','',0,'','Core1_4','Hotelreservation','Employee','Hotel  Reservation'),
(10010,'','','',0,'','Core1_5','Tourbooking','Employee','Tour Booking'),
(10011,'','','',63910295255,'Nicodemos_Agiik@gmail.com','Admin_1','Facilities','Employee','Facilities Reservation'),
(10012,'','','',0,'','Admin_2','Documentmgt','Employee','Document Management'),
(10013,'','','',0,'','Admin_3','Legalmgt','Employee','Legal Management'),
(10014,'','','',0,'','Admin_4','Visitor','Employee','Visitor Management'),
(10015,'','','',0,'','Finance_1','Collection','Employee','Collection'),
(10016,'','','',0,'','Finance_2','Budgetmgt','Employee','Budget Management'),
(10017,'','','',0,'','Finance_3','Disbursement','Employee','Disbursement'),
(10018,'','','',0,'','Finance_4','Apar','Employee','AP/AR'),
(10019,'','','',0,'','Finance_5','Genled','Employee','General Ledger'),
(10020,'','','',0,'','Logistic1_1','Operational','Employee','Operational & Asset Management'),
(10021,'','','',0,'','Logistic1_2','Assetmgt','Employee','Asset Management'),
(10022,'','','',0,'','Logistic1_3','Prucurement','Employee','Prucurement'),
(10023,'','','',0,'','Logistic1_4','Warehousing','Employee','Warehousing Management'),
(10024,'','','',0,'','Logistic1_5','Maintenance','Employee','Maintenance Repair & Overhual'),
(10025,'','','',0,'','Logistic2_1','Vehicle','Employee','Vehicle Reservation'),
(10026,'','','',0,'','Logistic2_2','Fleet','Employee','Fleet Management'),
(10027,'','','',0,'','Logistic2_3','Audit','Employee','Audit Management'),
(10028,'','','',0,'','Logistic2_4','Vendor','Employee','Vendor Portal'),
(10029,'','','',0,'','Logistic2_5','Documenttracking','Employee','Document Tracking'),
(10030,'','','',0,'','HR1_1','Recruitment','Employee','Recruitment'),
(10031,'','','',0,'','HR1_2','Applicant','Employee','Applicant Management'),
(10032,'','','',0,'','HR1_3','Newhire','Employee','New Hire Onboard'),
(10033,'','','',0,'','HR1_4','Performance','Employee','Performance Management'),
(10034,'','','',0,'','HR1_5','Social','Employee','Social Recognition'),
(10035,'','','',0,'','HR2_1','Ess','Employee','Employee Self-Service'),
(10036,'','','',0,'','HR2_2','Competency','Employee','Competency Management'),
(10037,'','','',0,'','HR2_3','Learning','Employee','Learning Management'),
(10038,'','','',0,'','HR2_4','Training','Employee','Training Management'),
(10039,'','','',0,'','HR2_5','Succession','Employee','Succession Planning'),
(10040,'','','',0,'','HR3_1','Shift','Employee','Shift &  Scheduling'),
(10041,'','','',0,'','HR3_2','Leave','Employee','Leave Management'),
(10042,'','','',0,'','HR3_3','Claims','Employee','Claims & Management'),
(10043,'','','',0,'','HR3_4','Time','Employee','Time & Attendance'),
(10044,'','','',0,'','HR3_5','Timesheet','Employee','Timesheet Management'),
(10045,'','','',0,'','HR4_1','Corehuman','Employee','Core Human Capital'),
(10046,'','','',0,'','HR4_2','Hranalytics','Employee','HR  Analytics'),
(10047,'','','',0,'','HR4_3','Compensation','Employee','Compensation Planning'),
(10048,'','','',0,'','HR4_4','Payroll','Employee','Payroll'),
(10049,'','','',639959941868,'Jhorie.292214@yahoo.com','Jhon','Pumento','Admin',''),
(10050,'','','',0,'','Daniel','Pascual','Admin',''),
(10051,'','','',639102952955,'Che.Buyan@hotmail.com','Che','Buyan','Admin',''),
(10052,'','','',0,'','','','','');

/*Table structure for table `request_contract` */

DROP TABLE IF EXISTS `request_contract`;

CREATE TABLE `request_contract` (
  `Request_ID` int(50) NOT NULL,
  `EmployeeName` char(50) default NULL,
  `Type_of_Contract` char(50) default NULL,
  `Department` char(50) default NULL,
  `Date_request` varchar(50) default NULL,
  `Date_expired` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `FilePdf` varchar(50) default NULL,
  PRIMARY KEY  (`Request_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request_contract` */

insert into `request_contract` values 
(110,'Felmar Inanud','Supplier Contract','Logistic','December 21, 2018',NULL,'Approved','C:\\Users\\ACER\\Documents\\final.docx'),
(112,'Bryan Acebo','Employment Contract','Hr','January 22 , 2018','January 2019','Approved','C:UsersACERDocumentsUser Interface.docx'),
(113,'Felmar Inanud','Supplier Contract','Logistic','December 21, 2018','February 2019','pending',''),
(114,'Felmar Inanud','Supplier Contract','Logistic','December 21, 2018',NULL,'Approved','C:UsersACERDesktopPS!CODES NEW 2018.txt');

/*Table structure for table `retirement` */

DROP TABLE IF EXISTS `retirement`;

CREATE TABLE `retirement` (
  `employee_no` int(50) NOT NULL auto_increment,
  `first_name` varchar(50) default NULL,
  `last_name` varchar(50) default NULL,
  `middle_name` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `date_of_birth` varchar(50) default NULL,
  `place_of_birth` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `civil_status` varchar(50) default NULL,
  `religion` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `employment_status` varchar(50) default NULL,
  `employment_date` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `nationality` varchar(50) default NULL,
  `contact_no` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `language/spoken` varchar(50) default NULL,
  `emergency_contact_person` varchar(50) default NULL,
  `no_of_contact_person` varchar(50) default NULL,
  `elementary` varchar(50) default NULL,
  `school_year` varchar(50) default NULL,
  `high_school` varchar(50) default NULL,
  `school_year1` varchar(50) default NULL,
  `college` varchar(50) default NULL,
  `school_year2` varchar(50) default NULL,
  `father_name` varchar(50) default NULL,
  `occupation` varchar(50) default NULL,
  `mother_name` varchar(50) default NULL,
  `occupation1` varchar(50) default NULL,
  PRIMARY KEY  (`employee_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `retirement` */

insert into `retirement` values 
(1,'','','','','','','','','','TRAVEL AGENT','RETIRED','','','','','','','','','','','','','','','','','',''),
(2,'','','','','','','','','','HR MANAGER','RETIRED','','','','','','','','','','','','','','','','','',''),
(3,'','','','','','','','','','OFFICE STAFF','RETIRED','','','','','','','','','','','','','','','','','',''),
(4,'','','','','','','','','','HR MANAGER','RETIRED','','','','','','','','','','','','','','','','','',''),
(5,'','','','','','','','','','HR MANAGER','RETIRED','','','','','','','','','','','','','','','','','','');

/*Table structure for table `terminated` */

DROP TABLE IF EXISTS `terminated`;

CREATE TABLE `terminated` (
  `employee_no` int(50) NOT NULL auto_increment,
  `first_name` varchar(50) default NULL,
  `last_name` varchar(50) default NULL,
  `middle_name` varchar(50) default NULL,
  `gender` varchar(50) default NULL,
  `date_of_birth` varchar(50) default NULL,
  `place_of_birth` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `civil_status` varchar(50) default NULL,
  `religion` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `employment_status` varchar(50) default NULL,
  `employment_date` varchar(50) default NULL,
  `department` varchar(50) default NULL,
  `nationality` varchar(50) default NULL,
  `contact_no` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `language_spoken` varchar(50) default NULL,
  `emergency_contact_person` varchar(50) default NULL,
  `no_of_contact_person` varchar(50) default NULL,
  `elementary` varchar(50) default NULL,
  `school_year` varchar(50) default NULL,
  `high_school` varchar(50) default NULL,
  `school_year1` varchar(50) default NULL,
  `college` varchar(50) default NULL,
  `school_year2` varchar(50) default NULL,
  `father_name` varchar(50) default NULL,
  `occupation` varchar(50) default NULL,
  `mother_name` varchar(50) default NULL,
  `occupation1` varchar(50) default NULL,
  PRIMARY KEY  (`employee_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `terminated` */

/*Table structure for table `vacancies` */

DROP TABLE IF EXISTS `vacancies`;

CREATE TABLE `vacancies` (
  `position` varchar(50) default NULL,
  `total_noof_position` varchar(50) default NULL,
  `vacant_position` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vacancies` */

insert into `vacancies` values 
('admin','4','2'),
('hr','3','1'),
('travel agent','2','1');

/*Table structure for table `visitor_registration` */

DROP TABLE IF EXISTS `visitor_registration`;

CREATE TABLE `visitor_registration` (
  `VisitorNo` int(50) NOT NULL,
  `VisitorName` varchar(50) default NULL,
  `Gender` varchar(50) default NULL,
  `Contact` varchar(11) default NULL,
  `CompanyName` varchar(50) default NULL,
  `Relationship` varchar(50) default NULL,
  `Department` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Dateofregister` varchar(50) default NULL,
  `Picture` varchar(100) default NULL,
  `TimeIn` varchar(50) default NULL,
  `TimeOut` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `PersontoVisit` varchar(50) default NULL,
  PRIMARY KEY  (`VisitorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `visitor_registration` */

insert into `visitor_registration` values 
(0,'Aleah Atayde','FEMALE','09064654321','ARco','Sister','HR','Meeting','December 8, 2018','jLabel9','2:11: PM','5:22: PM','OUT','Meeting'),
(1,'Roldan Pogi','MALE','09090112177','','',NULL,'Training','November 18,  2018','jLabel9','05:54: PM',NULL,'IN',NULL),
(2,'Roldan','MALE','09654516782','','',NULL,'Training','November 18,  2018','jLabel9','06:45: PM','08:56: PM','OUT',NULL),
(3,'Renz John','MALE','09126327183','','',NULL,'Training','November 18,  2018','jLabel9','06:46: PM','10:23: PM','OUT',NULL),
(4,'Eugene Arca','MALE','09118181112','BCP','',NULL,'Interview','November 19,  2018','jLabel9','09:00: PM','09:01: PM','OUT',NULL),
(5,'Rhia Quinday','MALE','09091121212','','',NULL,'Training','November 19,  2018','jLabel9','10:23: PM','10:23: PM','OUT',NULL),
(6,'Ryan Quindat','MALE','09127177171','','',NULL,'Training','February 2,  2018','','10:23: PM','','IN',NULL),
(7,'Eugene Arca','MALE','09876543223','India','Brother',NULL,'Arson','November 27,  2018','jLabel9','07:36: PM',NULL,'IN',NULL),
(8,'Angel Landicho','FEMALE','09182882882','BCP','Brother','Wala po','Training Room101','December 01,  2018','jLabel9','12:46: AM','06:57: AM','OUT','Training Room101'),
(9,'Bryan Jandog','MALE','09128828282','Pumento Company','Son','Son','HR Department','December 01,  2018','jLabel9','01:55: AM','Interview','OUT','December 01,  2018'),
(11,'Renz Qjuinday','FEMALE','09092182828','BCP','Brother','Brother','Conference Room','December 01,  2018','jLabel9','02:46: AM','Interview','OUT','December 01,  2018'),
(12,'Roldan Eturalde','MALE','09090181881','Puments Com','Kuya','HR','Dalaw','December 01,  2018','jLabel9','03:09: AM','03:09: AM','OUT','Dalaw'),
(13,'Lala pooh','FEMALE','09091828828','Puments','Father','VIP ROOM','Meeting','December 01,  2018','jLabel9','02:07: PM','02:08: PM','OUT','Meeting'),
(14,'Rhey Rapacon','MALE','09091881818','Dito','Cousin','Conference','Meeting','December 01,  2018','jLabel9','02:30: PM','11:39: PM','OUT','Meeting'),
(15,'Jhoven Licong','MALE','09812345432','SRC','Cousin','HR','Dalaw','December 06,  2018','jLabel9','06:48: PM','06:49: PM','OUT','Dalaw'),
(17,'Barangco Tuko','MALE','09092222111','LALOLO','HITMAN','LOCKER','NAKAW','December 06,  2018','jLabel9','07:00: PM','07:00: PM','OUT','NAKAW'),
(18,'Pumento ','MALE','09091298291','HAHA Com','Brother','HR','Training and Meeting with kuya mamac','December 09,  2018','jLabel9','12:56: AM','07:08: PM','OUT','Training and Meeting with kuya mamac'),
(19,'Maria Fe Juliano','FEMALE','09129082193','Pumento Company','','Core Department','Overnight','January 11,  2019','jLabel9','08:38: PM','08:39: PM','OUT','Overnight');

/*Table structure for table `visitor_registration_blocklist` */

DROP TABLE IF EXISTS `visitor_registration_blocklist`;

CREATE TABLE `visitor_registration_blocklist` (
  `VisitorNo` int(50) NOT NULL default '0',
  `VisitorName` varchar(50) default NULL,
  `Gender` varchar(50) default NULL,
  `Contact` varchar(11) default NULL,
  `CompanyName` varchar(50) default NULL,
  `Department` varchar(50) default NULL,
  `Relationship` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Dateofregister` varchar(50) default NULL,
  `TimeIn` varchar(50) default NULL,
  `TimeOut` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `Reason` varchar(50) default NULL,
  `TimeBlock` varchar(50) default NULL,
  `DateBlock` varchar(50) default NULL,
  `PersontoVisit` varchar(50) default NULL,
  PRIMARY KEY  (`VisitorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `visitor_registration_blocklist` */

insert into `visitor_registration_blocklist` values 
(2,'Renz John','MALE','09999127727','BCP',NULL,'Manager',NULL,NULL,NULL,NULL,'BLOCKED','aaaaa','06:04: PM','November 18,  2018',NULL),
(3,'Michael Ryan Nicodemos','MALE','09203929292','',NULL,'Kapatid',NULL,NULL,NULL,NULL,'BLOCKED','Sulotero','06:03: PM','November 18,  2018',NULL),
(4,'Michael Rya ','MALE','09161616161','',NULL,'',NULL,NULL,NULL,NULL,'BLOCKED','BASTOS','07:35: PM','November 19,  2018',NULL),
(6,'Xander Ford','MALE','09123123111','',NULL,'SON',NULL,NULL,NULL,NULL,'BLOCKED','','03:23: PM','November 20,  2018',NULL),
(7,'Arca Roldan','MALE','09182828821','',NULL,'Cousin',NULL,NULL,NULL,NULL,'BLOCKED','tanga','03:16: PM','November 20,  2018',NULL),
(8,'Rhia Jandog','FEMALE','09182828821','',NULL,'Classmate',NULL,NULL,NULL,NULL,'BLOCKED','','03:09: PM','November 20,  2018',NULL),
(9,'Darwin Arca','MALE','09754323456','',NULL,'Agitot',NULL,NULL,NULL,NULL,'BLOCKED','nagnakaw ','03:06: PM','November 20,  2018',NULL),
(10,'Roldan Arca','MALE','09092212111','','Rapist','',NULL,NULL,NULL,NULL,'Training Room101','December 06,  2018','BLOCKED','06:50: PM','Interview'),
(15,'Rhia Arca','FEMALE','09091918717','Cebu','Deads','Brother',NULL,NULL,NULL,NULL,'Training','December 04,  2018','BLOCKED','11:23: PM','Training room 101'),
(16,'Arca Parak','MALE','09102920922','LOLO','','Brother',NULL,NULL,NULL,NULL,'SILIP','December 06,  2018','BLOCKED','08:16: PM','Training Room101'),
(20,'eturalde renz','MALE','080765r4325','','','',NULL,NULL,NULL,NULL,'meeting','January 17,  2019','BLOCKED','07:08: PM','HR');
