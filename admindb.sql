/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.7-beta-nt : Database - overalldb
*********************************************************************
Server version : 5.0.7-beta-nt
*/


create database if not exists `overalldb`;

USE `overalldb`;

/*Table structure for table `casedocket_tbl` */

DROP TABLE IF EXISTS `casedocket_tbl`;

CREATE TABLE `casedocket_tbl` (
  `CDocketno` int(50) NOT NULL,
  `HearingDate` varchar(50) default NULL,
  `AccusedLawyer` varchar(50) default NULL,
  `Filled` varchar(50) default NULL,
  `Plaintifflawyer` varchar(50) default NULL,
  PRIMARY KEY  (`CDocketno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `casedocket_tbl` */

insert into `casedocket_tbl` values 
(2,'September 6, 2018','Dismissal','Idunno','Soon');

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

/*Table structure for table `document_archiving` */

DROP TABLE IF EXISTS `document_archiving`;

CREATE TABLE `document_archiving` (
  `Document_no` int(50) NOT NULL,
  `Type_of_Document` varchar(50) default NULL,
  `Employee_Name` char(50) default NULL,
  `Date` char(50) default NULL,
  `Path` varchar(50) default NULL,
  `Year_in_Archived` varchar(50) default NULL,
  PRIMARY KEY  (`Document_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_archiving` */

insert into `document_archiving` values 
(1001,'Rhey Jandog','C:UsersACERDesktopPS!= CODES =.txt','C:UsersACERDesktopPS!= CODES =.txt','Contract','October 25, 2018'),
(1002,'Ben Tulfo','C:UsersACERDesktopPS!TDG.txt','C:UsersACERDesktopPS!TDG.txt','Contract','October 18, 2018'),
(1003,'Contract','Ben Tulfo','September','C:\\Users\\ACER\\Desktop\\Codes\\CODES NEW 2018.txt',NULL),
(1004,'Contract','Ben Jandogsss','September','C:\\Users\\ACER\\Documents\\usbfix\\UsbFix_Report.txt',NULL),
(1005,'Ronald Roldan','C:UsersACERDesktopRhiaPDF.pdf','October 1 , 1982','Supplier Contract','October 24, 2018'),
(1006,'C:UsersACERDesktopPS1Admin1.jpg','Contract','hhgh','Ben Tulfo','October 25, 2018');

/*Table structure for table `document_request` */

DROP TABLE IF EXISTS `document_request`;

CREATE TABLE `document_request` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_request` */

insert into `document_request` values 
('Contract','Employement Agreement','I want to see a Contract','Nov 29, 2018','Nicodemos Renz','1:30pm','DELIVER'),
('Contract ','Resignation Letter Template','Request','Nov 30, 2018','Roldan Eturlde','8:00am','DELIVER'),
('Case','Case','To see this case','Nov 30, 2018','Arca Ryan ','2:20pm','DELIVER'),
('Letter','Email Business Letter','Request','Dec 01, 2018','Rhia Sy','11:15am','DELIVER'),
('Contract','Property Contract','Request','Dec 01, 2018','Regina Pablico','3:15pm','DELIVER'),
('Contract','Loan Contract','I want to see this Contract','Dec 02, 2018','Daniel Padilla','8:45am','DELIVER'),
('Case','Case','To see this Case','Dec 02, 2018','Alisson Pineda','',''),
('CONTRACT','Loan contract','wala','January 10,  2019','arca','07:03: PM','PENDING'),
('CONTRACT','Property contract','Overnight','January 10,  2019','Emman Tuko','11:49: PM','PENDING'),
('CONTRACT','Employment agreement','contract','January 11,  2019','ewa','02:51: AM','PENDING'),
('CONTRACT','Employment agreement','Titignan lang','January 11,  2019','Rhia Quinday utot','09:57: PM','PENDING'),
('DOCUMENT','DOCUMENT','gawin yung contract','January 11,  2019','demos ulut','10:01: PM','PENDING'),
('CONTRACT','Property contract','fghhj','January 12,  2019','pawcual','04:47: AM','PENDING');

/*Table structure for table `document_request_approved` */

DROP TABLE IF EXISTS `document_request_approved`;

CREATE TABLE `document_request_approved` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_ID` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `Image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_request_approved` */

insert into `document_request_approved` values 
('REPORTS','REPORTS','C:\\Users\\ACER\\Desktop\\FACILITIES\\executiveconfe.jpg','Wala daw','October 03,  2018','Mamac','1221','','',NULL,'APPROVED',NULL),
('asdasd','dasd','dsa','da','d','d','d','d','d','d','d',''),
('adsdaaaaaa','asdasdas','d','ad','da','da','d','dd','d','d','d','');

/*Table structure for table `document_request_archive` */

DROP TABLE IF EXISTS `document_request_archive`;

CREATE TABLE `document_request_archive` (
  `Type_of_Document` varchar(50) default NULL,
  `Request_Document` varchar(100) default NULL,
  `Document` varchar(100) default NULL,
  `Purpose` varchar(50) default NULL,
  `Date_Request` varchar(50) default NULL,
  `Employee_ID` varchar(50) default NULL,
  `Employee_name` varchar(50) default NULL,
  `Document_ID` varchar(50) default NULL,
  `ApprovedBy` varchar(50) default NULL,
  `Time_Request` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `Image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `document_request_archive` */

insert into `document_request_archive` values 
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Archive',NULL);

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

/*Table structure for table `facility_req` */

DROP TABLE IF EXISTS `facility_req`;

CREATE TABLE `facility_req` (
  `ReservationNo` int(100) NOT NULL,
  `Name` varchar(100) default NULL,
  `No_of_Attendees` varchar(100) default NULL,
  `DateReserve` varchar(100) default NULL,
  `Purpose` varchar(100) default NULL,
  `DateRequest` varchar(100) default NULL,
  `TimeRequest` varchar(100) default NULL,
  `Status` varchar(100) default NULL,
  `TypeOfFacility` varchar(100) default NULL,
  `NameofFacility` varchar(100) default NULL,
  PRIMARY KEY  (`ReservationNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_req` */

insert into `facility_req` values 
(1,'Roldan Tuko','8','January 17, 2019','Meeting with VP','January 12,  2019','04:56: AM','RESERVED','CONFERENCE ROOM','VIP'),
(2,'Renz','1','January 26, 2019','Wala','January 12,  2019','05:03: AM','RESERVED','CONFERENCE ROOM','VIP'),
(3,'Emman','4','January 10, 2019','Tambay','January 12,  2019','05:04: AM','RESERVED','CONFERENCE ROOM','VIP'),
(4,'Ako si dan','2','January 31, 2019','Meeting with Manager','January 12,  2019','05:05: AM','RESERVED','CONFERENCE ROOM','VIP');

/*Table structure for table `facility_req1` */

DROP TABLE IF EXISTS `facility_req1`;

CREATE TABLE `facility_req1` (
  `ReservationNo` int(100) NOT NULL default '0',
  `Name` varchar(100) default NULL,
  `No_of_Attendees` varchar(100) default NULL,
  `DateReserve` varchar(100) default NULL,
  `DateRequest` varchar(100) default NULL,
  `TimeRequest` varchar(100) default NULL,
  `Status` varchar(100) default NULL,
  `TypeOfFacility` varchar(100) default NULL,
  `NameofFacility` varchar(100) default NULL,
  PRIMARY KEY  (`ReservationNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_req1` */

/*Table structure for table `facility_req1_cancel` */

DROP TABLE IF EXISTS `facility_req1_cancel`;

CREATE TABLE `facility_req1_cancel` (
  `ReservationNo` int(100) default '0',
  `Name` varchar(100) default NULL,
  `No_of_Attendees` varchar(100) default NULL,
  `DateReserve` varchar(100) default NULL,
  `DateRequest` varchar(100) default NULL,
  `TimeRequest` varchar(100) default NULL,
  `Status` varchar(100) default NULL,
  `TypeOfFacility` varchar(100) default NULL,
  `NameofFacility` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_req1_cancel` */

insert into `facility_req1_cancel` values 
(NULL,NULL,NULL,NULL,NULL,NULL,'CANCEL',NULL,NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,'CANCEL',NULL,NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,'CANCEL',NULL,NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,'CANCEL',NULL,NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,'CANCEL',NULL,NULL),
(NULL,NULL,NULL,NULL,NULL,NULL,'CANCEL',NULL,NULL);

/*Table structure for table `facility_reservation` */

DROP TABLE IF EXISTS `facility_reservation`;

CREATE TABLE `facility_reservation` (
  `Reservation_No` int(50) default NULL,
  `Employee_name` char(50) default NULL,
  `Contact` int(50) default NULL,
  `Department` varchar(50) default NULL,
  `Purpose` varchar(50) default NULL,
  `Type_of_facility` varchar(50) default NULL,
  `Facility_Name` varchar(50) default NULL,
  `No_of_person` varchar(50) default NULL,
  `DateReserve` varchar(50) default NULL,
  `Status` varchar(100) default NULL,
  `DateRequest` varchar(50) default NULL,
  `TimeRequest` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facility_reservation` */

insert into `facility_reservation` values 
(0,'',0,'','','','VIP','','January 15, 2019','Reserved','',''),
(0,'',0,'','','','C ROOM1','','January 16, 2019','UnderMaintenance','',''),
(0,'',0,'','','','VIP','','January 17,2019','Available','','');

/*Table structure for table `legal_case_tbl` */

DROP TABLE IF EXISTS `legal_case_tbl`;

CREATE TABLE `legal_case_tbl` (
  `Caseno` int(50) NOT NULL,
  `Fullname` char(50) default NULL,
  `Gender` char(50) default NULL,
  `Age` int(50) default NULL,
  `Contact` int(50) default NULL,
  `Address` varchar(50) default NULL,
  `Type_of_Case` char(50) default NULL,
  `Date` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `Department` char(50) default NULL,
  `PlaintiffLawyer` varchar(50) default NULL,
  PRIMARY KEY  (`Caseno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `legal_case_tbl` */

insert into `legal_case_tbl` values 
(1,'BRYAN CEPE INANUD','MALE',25,192828222,'#16 VALENZUELA TRUCKLANE','ADMINISTRATIVE CASE','September 4, 2018','Acussed','Human Resource 1',NULL);

/*Table structure for table `legal_complains_tbl` */

DROP TABLE IF EXISTS `legal_complains_tbl`;

CREATE TABLE `legal_complains_tbl` (
  `Title` varchar(50) default NULL,
  `Legal_ID` int(100) NOT NULL,
  `Firstname` char(50) default NULL,
  `Lastname` char(50) default NULL,
  `Middlename` char(50) default NULL,
  `Gender` char(50) default NULL,
  `Age` int(50) default NULL,
  `ContactPerson` int(50) default NULL,
  `BusinessTelephone` int(50) default NULL,
  `StreetAddress` varchar(50) default NULL,
  `EmailAdd` varchar(50) default NULL,
  `Reason` char(50) default NULL,
  `DateofComplains` varchar(50) default NULL,
  `Type_of_Case` varchar(50) default NULL,
  `Status` varchar(50) default NULL,
  `DateAction` varchar(50) default NULL,
  `Department` varchar(50) default NULL,
  PRIMARY KEY  (`Legal_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `legal_complains_tbl` */

insert into `legal_complains_tbl` values 
('Mr',1,'Abner','Inanud','Landicho','Male',25,9271572,1572882,'#16 Tandang Sora QC','Abc@yahoo.com','Deads','October 31, 2018','ADMINISTRATIVE CASE','October 8, 2018','Acussed','Human Resource 3'),
('Ms',2,'Mafe','Jandog','Inanud','Female',22,2134441,213213,'#16 Tandang Sora','123@yahoo.com','idunno','Item 1','October 17, 2018','Item 1','Item 1','January 29,2018'),
('Ms',3,'Joanna','Cepe','Jandog','Female',28,2928111,123455,'#Sauyo Street','213@gmail.com','idunno','Item 1','October 1, 2018','Item 1','Item 1','January 1 , 2015'),
('?',4,'Eugene','Arca','B','Male',16,912121209,121221,' zxc zxc zxc zxc zxc zxc zxc zxc z','eugene.arca.16@gmail.com','hindi binalik ang refund','Item 1','October 31, 2018','Item 1','Item 1','sadadas'),
('Mr',5,'Jandog','Cudal','Juliano','Male',22,21321323,123346,'#Valenzuela Bulok Street','123@Jandog.com','Shutay','October 31, 2019','Item 3','Item 4','','Item 1');

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
(10051,'','','',639102952955,'Che.Buyan@hotmail.com','Che','Buyan','Admin','');

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
(18,'Pumento ','MALE','09091298291','HAHA Com','Brother','HR','Training and Meeting with kuya mamac','December 09,  2018','jLabel9','12:56: AM',NULL,'IN','Mamac'),
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
(16,'Arca Parak','MALE','09102920922','LOLO','','Brother',NULL,NULL,NULL,NULL,'SILIP','December 06,  2018','BLOCKED','08:16: PM','Training Room101');
