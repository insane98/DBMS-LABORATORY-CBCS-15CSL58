CREATE TABLE Employee (
    ssn INT ,
    fname VARCHAR(25),
    lname varchar(30),
    address VARCHAR(25),
    sex VARCHAR(10),
    salary INT,
    superssn INT,
    dno INT,
    PRIMARY KEY (ssn),
    FOREIGN KEY (superssn)
        REFERENCES Employee (ssn)
);

CREATE TABLE department (
    dno INT,
    dname VARCHAR(25),
    mgrssn INT,
    mgrstrtdate DATE,
    PRIMARY KEY (dno),
    FOREIGN KEY (mgrssn)
        REFERENCES Employee (ssn) on delete cascade
);



alter table Employee add FOREIGN key (dno) REFERENCES department (dno);


CREATE TABLE dlocation (
    dno INT NOT NULL,
    dloc VARCHAR(25) NOT NULL,
    PRIMARY KEY (dno , dloc),
    FOREIGN KEY (dno)
        REFERENCES department (dno)
);



CREATE TABLE project (
    pno INT NOT NULL,
    pname VARCHAR(25),
    plocation VARCHAR(25),
    dno INT,
    PRIMARY KEY (pno),
    FOREIGN KEY (dno)
        REFERENCES department (dno)
);




Insert into department(dno,dname) values(1,"Account");
Insert into department(dno,dname) values(2,"Management");
Insert into department(dno,dname) values(3,"Marketing");
Insert into department(dno,dname) values(4,"sales");
Insert into department(dno,dname) values(5,"IT");
Insert into department(dno,dname) values(6,"Research");




INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('23412356', 'JENNIFER', 'PARIS', 'FEMALE','700000', '4');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('23456781', 'JAMES', 'NEWYORK', 'MALE','300000', '4');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('33344555', 'FRANKLIN', 'CALIFORNIA','MALE', '600000', '5');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('67891234', 'JOYCE', 'WASHINGTON','FEMALE', '400000', '5');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('123456789', 'JOHN', 'TEXAS', 'MALE','300000', '5');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('888666555', 'AHMAD', 'CALIFORNIA','MALE', '700000', '4');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('984600445', 'MARK', 'WASHINGTON','MALE', '800000', '5');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('56789012', 'ALEENA', 'LONDON', 'FEMALE', '700000', '5');
INSERT INTO `Employee` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `SALARY`, `DNO`) VALUES ('89012345', 'ALICE', 'STAFFORD', 'FEMALE', '1200000', '5');



UPDATE `Employee` SET `superssn` = '984600445' WHERE `ssn` = 23412356;
UPDATE `Employee` SET `superssn` = '67891234' WHERE `ssn` = 23456781;
UPDATE `Employee` SET `superssn` = '123456789' WHERE `ssn` = 33344555;
UPDATE `Employee` SET `superssn` = '89012345' WHERE `ssn` = 56789012;
UPDATE `Employee` SET `superssn` = '888666555' WHERE `ssn` = 67891234;
UPDATE `Employee` SET `superssn` = '56789012' WHERE `ssn` = 89012345;
UPDATE `Employee` SET `superssn` = '33344555' WHERE `ssn` = 123456789;
UPDATE `Employee` SET `superssn` = '23456781' WHERE `ssn` = 888666555;
UPDATE `department` SET `mgrssn` = '888666555' WHERE `dno` = 1;
UPDATE `department` SET `mgrssn` = '123456789' WHERE `dno` = 4;
UPDATE `department` SET `mgrssn` = '33344555' WHERE `dno` = 5;



INSERT INTO `dlocation` (`DNO`, `DLOC`) VALUES ('1', 'WASHINGTON');
INSERT INTO `dlocation` (`DNO`, `DLOC`) VALUES ('4', 'CALIFORNIA');
INSERT INTO `dlocation` (`DNO`, `DLOC`) VALUES ('5', 'NEW YORK');
INSERT INTO `dlocation` (`DNO`, `DLOC`) VALUES ('5', 'WASHINGTON');





INSERT INTO project (PNAME, PNO, PLOCATION, DNO) VALUES ('PRODUCTA', 1,'HOUSTON', 5);
INSERT INTO project (`PNAME`, `PNO`, `PLOCATION`, `DNO`) VALUES('PRODUCTB', 2, 'WASHINGTON', 5);
INSERT INTO project (`PNAME`, `PNO`, `PLOCATION`, `DNO`) VALUES('PRODUCTC', 3, 'CALIFORNIA', 5);
INSERT INTO project (`PNAME`, `PNO`, `PLOCATION`, `DNO`) VALUES('COMPUTERIZATION',10,'NEW YORK',4);
INSERT INTO project (`PNAME`, `PNO`, `PLOCATION`, `DNO`) VALUES('IOT',20,'PARIS',1);
INSERT INTO project (`PNAME`, `PNO`, `PLOCATION`, `DNO`) VALUES('REORGANIZATION',30,'STAFFORD',4);



INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('123456789', '1', '33');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('123456789', '2', '8');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('984600445', '3', '40');
INSERT INTO `works_on`(`SSN`, `PNO`, `HOURS`) VALUES ('984600445', '1', '50');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('888666555', '1', '45');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('888666555', '2', '54');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('33344555', '2', '10');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('33344555', '3', '10');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('33344555', '10', '10');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('33344555', '20', '10');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('67891234', '30', '20');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('67891234', '10', '20');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('23412356', '30', '12');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('23412356', '20', '14');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('23456781', '20', '20');
INSERT INTO `works_on` (`SSN`, `PNO`, `HOURS`) VALUES ('23456781', '1', '34');



/**
Make a list of all project numbers for projects that involve an Employee whose last
name is ‘Scott’, either as a worker or as a manager of the department that controls
the project
**/
select distinct p.pno from project p, department d, Employee e where p.dno=d.dno and d.mgrssn=e.ssn and lname="scott" union select distinct p.pno from project p, works_on w,Employee e where w.pno=p.pno and w.ssn=e.ssn and lname="scott";




-- Show the resulting salaries if every Employee working on the ‘IoT’ project is given a 10 percent raise.

select fname, lname, 0.1*salary from Employee e, works_on w, project p where e.ssn=w.ssn and p.pno=w.pno and p.pname="iot";


-- Find the sum of the salaries of all Employees of the ‘Accounts’ department, as well as the maximum salary, the minimum salary, and the average salary in this department.


select sum(salary) as SUM, max(salary) as MAX, min(salary) as MIN, avg(salary) as AVG from Employee e, department d where e.dno=d.dno and dname="accounts";





--Retrieve the name of each Employee who works on all the projects controlled by department number 5 (use NOT EXISTS operator).

select name from Employee where not exists ( ( select Pnumber from project where Dnum=5) except ( select pno from works_on where ssn=essn) );


-- For each department that has more than five Employees, retrieve the department number and the number of its Employees who are making more than Rs. 6,00,000.
Select d.dno  ,count(*) as No_Of_Employees from department d, Employee e where d.dno=e.dno and e.salary>600000 and e.dno in (select dno from Employee group by dno having count(*)>5) group by d.dno

