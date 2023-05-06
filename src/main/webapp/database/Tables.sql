SHOW TABLES;
CREATE TABLE  BLOGIN(ID int, 
	BID VARCHAR(100), 
	PWD VARCHAR(100), 
	BNAME VARCHAR(100),
	STATUS int);

CREATE TABLE  CLOGIN(ID int, 
	CID VARCHAR(100), 
	PWD VARCHAR(100),
	STATUS int);

CREATE TABLE  CREJECT(CID VARCHAR(100), 
	PWD VARCHAR(100), 
	ACCNO VARCHAR(100), 
	BNAME VARCHAR(100));

CREATE TABLE  CUSTOMER(ID VARCHAR(100), 
	CID VARCHAR(100) primary key, 
	PWD VARCHAR(100), 
	ACCNO int(15) unique , 
	ATYPE VARCHAR(100), 
	CNAME VARCHAR(100), 
	BNAME VARCHAR(100), 
	BAL int, 
	TPWD VARCHAR(100)unique, 
	STATUS int);

CREATE TABLE  REJECT(CID VARCHAR(100), 
	ACCNO VARCHAR(100), 
	ATYPE VARCHAR(100), 
	BNAME VARCHAR(100));

CREATE TABLE  TACCEPT(SCID VARCHAR(100), 
	SACCNO VARCHAR(100), 
	ATYPE VARCHAR(100), 
	SBNAME VARCHAR(100), 
	SBAL int, 
	DCID VARCHAR(100), 
	DACCNO VARCHAR(100), 
	DTYPE VARCHAR(100), 
	DBNAME VARCHAR(100), 
	DBAL int);

CREATE TABLE  TRANSFER(ID VARCHAR(100), 
	SACCNO VARCHAR(100), 
	DACCNO VARCHAR(100), 
	AMT int, 
	ATYPE VARCHAR(100), 
	DTYPE VARCHAR(100), 
	TPWD VARCHAR(100), 
	SBANK VARCHAR(100), 
	DBANK VARCHAR(100));