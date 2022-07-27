/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.7-beta-nt : Database - overalldb
*********************************************************************
Server version : 5.0.7-beta-nt
*/


create database if not exists `overalldb`;

USE `overalldb`;

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
(10001,'Pumento','John Kirst','R',639959941868,'Pogi@hotmail.com','Core2_1','Account','Employee','Account Excutive'),
(10003,'','','',0,'','Core2_2','Passvisa','Employee','Passport & Visa'),
(10004,'','','',0,'','Core2_3','Schedulerate','Employee','Schedule & Rate'),
(10005,'','','',0,'','Core2_4','CRM','Employee','CRM'),
(10006,'','','',0,'','Core1_1','Tourcreation','Employee','Tour Creation & Cofiguration'),
(10007,'','','',0,'','Core1_2','Customeritenerary','Employee','CTIM'),
(10008,'','','',0,'','Core1_3','Transportbooking','Employee','Transport Booking'),
(10009,'','','',0,'','Core1_4','Hotelreservation','Employee','Hotel  Reservation'),
(10010,'','','',0,'','Core1_5','Tourbooking','Employee','Tour Booking'),
(10011,'','','',9260061514,'Roldan@hotmail.com','Admin_1','Facilities','Employee','Facilities Reservation'),
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
(10049,'','','',0,'','Jhon','Pumento','Admin',''),
(10050,'','','',0,'','Daniel','Pascual','Admin',''),
(10051,'','','',0,'','Che','Buyan','Admin','');
