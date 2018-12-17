-- MySQL dump 10.11
--
-- Host: localhost    Database: zetains
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ag_log`
--

DROP TABLE IF EXISTS `ag_log`;
CREATE TABLE `ag_log` (
  `AgentCode` char(4) default NULL,
  `Username` varchar(15) default NULL,
  `password` varchar(16) default NULL,
  KEY `AgentCode` (`AgentCode`),
  CONSTRAINT `ag_log_ibfk_1` FOREIGN KEY (`AgentCode`) REFERENCES `agentdetails` (`AgentCode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ag_log`
--

LOCK TABLES `ag_log` WRITE;
/*!40000 ALTER TABLE `ag_log` DISABLE KEYS */;
INSERT INTO `ag_log` VALUES ('A001','Ram_N1','ramu123'),('A002','Suri159','suriroxx'),('A003','AVI_ZETA','avinash'),('A004','sum12345','sum12345');
/*!40000 ALTER TABLE `ag_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentdetails`
--

DROP TABLE IF EXISTS `agentdetails`;
CREATE TABLE `agentdetails` (
  `AgentCode` char(4) NOT NULL default '',
  `AgentName` varchar(20) default NULL,
  `PeopleInsured` int(4) default NULL,
  PRIMARY KEY  (`AgentCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agentdetails`
--

LOCK TABLES `agentdetails` WRITE;
/*!40000 ALTER TABLE `agentdetails` DISABLE KEYS */;
INSERT INTO `agentdetails` VALUES ('A001','RamNaresh',5),('A002','Surindra',19),('A003','Avinash',24),('A004','Sudha',10),('A005','Sancheeta',13);
/*!40000 ALTER TABLE `agentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_det`
--

DROP TABLE IF EXISTS `bank_det`;
CREATE TABLE `bank_det` (
  `BankName` varchar(20) default NULL,
  `BankAccNumber` bigint(16) default NULL,
  `ISFCCODE` varchar(20) default NULL,
  `BranchName` varchar(20) default NULL,
  `BranchAddress` varchar(150) default NULL,
  `pno` char(5) default NULL,
  KEY `pno` (`pno`),
  CONSTRAINT `bank_det_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `policyholders` (`pno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_det`
--

LOCK TABLES `bank_det` WRITE;
/*!40000 ALTER TABLE `bank_det` DISABLE KEYS */;
INSERT INTO `bank_det` VALUES ('gsd',54,'gd','gdr','gdrtt','P3001');
/*!40000 ALTER TABLE `bank_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_det`
--

DROP TABLE IF EXISTS `bus_det`;
CREATE TABLE `bus_det` (
  `CompanyName` varchar(20) default NULL,
  `CompanyAddress` varchar(30) default NULL,
  `MobileNumber` bigint(11) default NULL,
  `IncomeTaxNumber` varchar(20) default NULL,
  `ServiceTaxNumber` varchar(20) default NULL,
  `EmpType` varchar(15) default NULL,
  `pno` char(5) default NULL,
  KEY `pno` (`pno`),
  CONSTRAINT `bus_det_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `policyholders` (`pno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_det`
--

LOCK TABLES `bus_det` WRITE;
/*!40000 ALTER TABLE `bus_det` DISABLE KEYS */;
INSERT INTO `bus_det` VALUES ('aswegt','gtrfd',844,'gsd','grdgf','Business','P3001');
/*!40000 ALTER TABLE `bus_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_det`
--

DROP TABLE IF EXISTS `log_det`;
CREATE TABLE `log_det` (
  `pno` char(5) default NULL,
  `userid` varchar(15) default NULL,
  `password` varchar(15) default NULL,
  KEY `pno` (`pno`),
  CONSTRAINT `log_det_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `policyholders` (`pno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_det`
--

LOCK TABLES `log_det` WRITE;
/*!40000 ALTER TABLE `log_det` DISABLE KEYS */;
INSERT INTO `log_det` VALUES ('P1001','Raman','Raman'),('P4001','Rajnish','Rajnish'),('P3001','Ravi','ravirohan'),('P5001','rakesh','alooparatha');
/*!40000 ALTER TABLE `log_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_det`
--

DROP TABLE IF EXISTS `per_det`;
CREATE TABLE `per_det` (
  `pno` char(5) default NULL,
  `Name` varchar(20) default NULL,
  `FatherName` varchar(20) default NULL,
  `Gender` varchar(7) default NULL,
  `Marital_status` varchar(10) default NULL,
  `DateofBirth` date default NULL,
  `Nationality` varchar(15) default NULL,
  `Occupation` varchar(15) default NULL,
  `InsurableIncome` int(8) default NULL,
  `MobileNumber` bigint(11) default NULL,
  `MobileNumber2` bigint(11) default NULL,
  `EmailAddress` varchar(20) default NULL,
  `AadharNumber` bigint(12) default NULL,
  `VoterID` char(10) default NULL,
  KEY `pno` (`pno`),
  CONSTRAINT `per_det_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `policyholders` (`pno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `per_det`
--

LOCK TABLES `per_det` WRITE;
/*!40000 ALTER TABLE `per_det` DISABLE KEYS */;
INSERT INTO `per_det` VALUES ('P3001','Ravi','Raju','male','Single','1960-06-04','hnfy','hry',45,5827,788885,'ftyfu',75,'ata1234567'),('P1001','Raman','Rajesh','male','Married','1978-06-14','Indian','Business',785000,9876543210,7894561230,'r@raman.com',789456123123,'ATA7894561');
/*!40000 ALTER TABLE `per_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policydetails`
--

DROP TABLE IF EXISTS `policydetails`;
CREATE TABLE `policydetails` (
  `PolicyID` char(4) default NULL,
  `PolicyName` varchar(40) default NULL,
  `Price` int(5) default NULL,
  `Premium` int(5) default NULL,
  `Benefits` varchar(6553) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policydetails`
--

LOCK TABLES `policydetails` WRITE;
/*!40000 ALTER TABLE `policydetails` DISABLE KEYS */;
INSERT INTO `policydetails` VALUES ('POL1','RELICURE',1500,36,'*Cashless treatment at 4600+ hospitals & Daily allowance \n *Auto recharge of your policy Sum Insured, if exhausted \n *Get health check-ups for insured members, every year \n *Avail treatment anywhere in the world \n *No \'Claim based\' loading ever & Get Lifetime renewability \n *No paperwork. Buy & get policy online in 2 mins \n *Pre & Post hospitalization \n *Auto Recharge of your Sum Insured \n *Avail Health Check-ups, every year \n *No Sub-Limits ! \n *\'No Co-Payment\' Plans \n* No \'Claim-based\' loading & Get Lifetime Renewability \n *Get additional 100% No-Claim Bonus ! \n *Review your decision \n *Other great benefits'),('POL2','Easy Health Standards',2500,36,'*In-Patient Hospitalisation - The medical expenses for coverage for hospitalization of more than 24 hrs. \n *Pre-Hospitalisation - The medical expenses that you incur due to illness during the 60 days immediately before you are hospitalised. \n *Post-Hospitalisation - The medical expenses you incur in the 90 days immediately after you are discharged from hospital. Day-Care Procedures - The medical expenses for enlisted 144 day-care procedures, which do not require 24 hours hospitalization due to technological advancement, are covered.\n *Domiciliary Treatment - The treatment expenses involved in getting a treatment done at home which otherwise would need hospitalization. \n *Organ Donor - Treatment expenses for the organ donor at the time of organ transplant. \n *Emergency Ambulance - Expenses incurred if ambulance service is used on the way to hospital for hospitalization (up to Rs. 2000). \n *Daily Cash for choosing Shared Accommodation - A lump sum amount given for selecting a shared room in a network hospital. \n *Ayush Benefit - The Medical expenses for in-patient treatment taken under Ayurveda, Unani, Sidha and Homeopathy. \n *Health Check-up - A comprehensive health check-up involving a number of medical tests only once at the end of a block of four continuous claim free policy years. \n *Additional cover for Critical Illness (optional) - You can opt for an additional cover for Critical Illness which covers for cancer, coronary artery (bypass) surgery, first heart attack (myocardial infarction), kidney failure (end-stage renal disease), major organ transplantation, multiple sclerosis, paralysis and stroke. \n *The sum insured for Critical Illness can be either 50% or 100% of your basic sum insured subject to minimum of Rs. 100,000.\n\n *Cumulative Bonus - You get a cumulative bonus of 10% for every claim-free year accumulating up to 100% (in the event of a claim, cumulative bonus will be reduced by 10% of SI on the next renewal). \n *Cashless Service - You need to obtain a pre-authorization for all planned admissions atleast 48 hours prior to actual admission or regularize any `emergency\' admission within 24 hours post the admission. \n *The details of the process and the documentation requirements are given in the guide-book sent along with the policy. \n *Sum Insured Enhancement - Sum Insured can be enhanced only at the time of renewal subject to no claim have been lodged/ paid under the policy. \n *If the insured increases the sum insured one grid up, no fresh medicals shall be required. \n *In cases where the sum insured increase is more than one grid up, the case shall be subject to medicals. \n *In case of increase in the sum insured waiting period will apply afresh in relation to the amount by which the Sum Insured has been enhanced. However, the quantum of increase shall be at the discretion of the company. \n *Portability - If you are insured with some other company\'s health insurance and you want to shift to us on renewal, you can. Our portability policy is customer friendly and\naims to achieve the transfer of most of the accrued benefits and makes due allowances for waiting periods etc. \n *Tax Benefits - With the Easy Health Insurance Plan you can presently avail tax benefits for the premium amount under Section 80D of the Income Tax Act.'),('POL3','AXA-Secure',3500,36,'*Access  to our vast pan India Cashless Network comprising 4300+ hospitals. \n * Coverage of Day-care procedure costs. \n *Reimbursement of Pre and post hospitilization related expenses. \n *Twice the sum insured in case of diagnosis of any of the 20 main critical illnesses. \n *Unlimited room rent. * Benefit of life long renewal. \n *Tax Benefits of upto Rs.25,000 under section 80(D). \n *Multichannel 24x7 claim inti mitation nd assisstance. \n *Simple , hassle free claim settlement process. \n * Renewal discount of 5% each claim free year upto a maximum of 5 years on a progressive scale. \n *Dedicated Claims Handler for health insurance claims.'),('POL4','Health Suraksha',500,36,'*Valuable financial protection in case of hospitalisation surgery etc. \n *Increasing Health cover every year. \n *Lump sum benefit irrespective of actual medical costs. \n *No claim benefit. \n *Flexible benefit limit to choose from. \n *Flexible Premium payment options.'),('POL5','ZetaUltimate',5500,36,'*Wide coverage: You can choose an individual Health Suraksha scheme or a Family Floater health insurance policy according to your requirements. The coverage is optimal and comes at an affordable price.\n\n *Time Period: You can opt for a   Health Suraksha policy that runs for a time period of one or two years (With Life time renewability) .\n\n *Bonus: If your policy is claim-free you are entitled to a cumulative bonus.\n\n *Included Health check up:   Health Suraksha will provide for at the cost of a health check up if you have completed 4 years without making a claim.\n\n *Service Points: You can make cashless claims across more than 4800+ network hospitals in India.\n\n *Tax Benefits: You can avail of the Income Tax benefits under Section 80D of the Income Tax Act.\n\n *Quick processing: Once you decide to purchase the   Health Suraksha, the turnaround time of delivering your policy will be quick.\n\n *In-patient Treatment: Hospitalization costs due to illness or accident are covered upto the Policy Sum Insured.\n\n *Pre-hospitalization: The Medical Expenses incurred due to an Illness in 60 days immediately before the Insured Person was hospitalized.\n\n *Post-hospitalization: The Medical Expenses incurred in 90 days immediately after the Insured Person was discharged post Hospitalization,\n\n *Day Care Procedures: Expenses for 144 listed day care procedures that does not need 24 hours hospitalization on account of technological advancements are reimbursed\n\n *Domiciliary Treatment: The Medical Expenses incurred by an Insured Person for medical treatment taken at his home which would otherwise have required Hospitalization and on the advice of the attending Medical Practitioner, if the Insured Person could not be transferred to a Hospital or a Hospital bed was unavailable are reimbursed upto the policy sum insured\n\n *Organ Donor: The Medical Expenses for an organ donor\'s treatment in the event of organ transplantation for harvesting an organ donated are reimbursed Upto the policy Sum Insured\n\n *Emergency Ambulance: (Limit per hospitalisation)	Upto Rs. 2,000 reimbursed as ambulance expenses during an emergency\n\n *AYUSH: Covers inpatient hospitalization expenses under Ayurvedic ,Unani ,Sidha & Homeopathy Upto the policy Sum Insured\n\n *Cumulative Bonus (CB): 5% of the Basic Sum Insured every claim free year subject to a maximum of 50% of the basic sum insured. CB will be reduced by 5% of the basic sum insured in case of a claim.\n\n *Health check Up: We will offer health checkup only once at the end of continuous four claim free years during which You have been insured with Us. Our maximum liability will be subject to 1% of the Sum Insured for this Policy Year or the subsequent Policy Years upto a maximum of Rs 5,000. Incase of a family floater, if any of the members make a claim under this policy, the health checkup benefit will not be offered to the whole family.');
/*!40000 ALTER TABLE `policydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policyholders`
--

DROP TABLE IF EXISTS `policyholders`;
CREATE TABLE `policyholders` (
  `pno` char(5) NOT NULL default '',
  `name` varchar(20) default NULL,
  `Premium` int(2) default NULL,
  `Agent` char(4) default NULL,
  PRIMARY KEY  (`pno`),
  KEY `Agent` (`Agent`),
  CONSTRAINT `policyholders_ibfk_1` FOREIGN KEY (`Agent`) REFERENCES `agentdetails` (`AgentCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policyholders`
--

LOCK TABLES `policyholders` WRITE;
/*!40000 ALTER TABLE `policyholders` DISABLE KEYS */;
INSERT INTO `policyholders` VALUES ('P1001','Raman',15,'A004'),('P2008','Ravi',16,'A004'),('P3001','Ravi',0,NULL),('P4001','Rajnish',37,'A004'),('P5001','jy7i',15,'A005'),('P5002','jy7i',37,'A004');
/*!40000 ALTER TABLE `policyholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_det`
--

DROP TABLE IF EXISTS `res_det`;
CREATE TABLE `res_det` (
  `HouseNumber` varchar(10) default NULL,
  `Landmark` varchar(15) default NULL,
  `Locality` varchar(15) default NULL,
  `City` varchar(15) default NULL,
  `State` varchar(20) default NULL,
  `Country` varchar(20) default NULL,
  `pno` char(5) default NULL,
  KEY `pno` (`pno`),
  CONSTRAINT `res_det_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `policyholders` (`pno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_det`
--

LOCK TABLES `res_det` WRITE;
/*!40000 ALTER TABLE `res_det` DISABLE KEYS */;
INSERT INTO `res_det` VALUES ('trg','thtr','gtrsw','thg','ttfrg','srag','P3001');
/*!40000 ALTER TABLE `res_det` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-18  0:23:57
