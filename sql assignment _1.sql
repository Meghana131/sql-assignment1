use FIS2DB
create table tblclients
(
Client_id int primary key,
Cname varchar(30) not null,
address_emp varchar(30),
Email varchar(30),
phone bigint,
Business varchar(30)not null
)
select *from tblclients
select *from Employees
create table Employees 
(
empno int primary key,
ename varchar(30)not null,
job varchar(15),
Salary int ,
Deptno  int references tblclients(Client_id)
)
create table Department
(
Deptid int primary key,
DeptName varchar(20)not null,
DeptLocation nvarchar(30)
)
create table Projects
(
Project_ID int primary key,
descr varchar(30) not null,
startdate date,
Planned_End_date date,
Actual_End_date date,
budget int check(budget>0),
client_id int foreign key references tblclients(client_ID)
)
create table EmpProjectTasks
(
Project_ID int foreign key references projects(project_id),
Empno int foreign key references employees(empno),
Start_Dt date ,
End_Date date,
Task varchar(25)not null,
emp_status varchar(15)not null
)
insert into tblclients values(1001,'ACME utilities','noida','contact@acmeutil.com',9567880032 ),(1002, 'Tracken consultants','MUmbai','Consult@trackon.com',874321909),(1003,'MoneySaver Distributors','Kolkata','Save@Moneysaver.com',7799886655),(1004,'LAwful corp','Chennai','justice@lawful.com', 9210342219)
 
 insert into  employees values (7001,'Sandeep','Analyst',25000,10),(7002,'Rajesh','Designer',30000,10),(7003,'Madhav','Developer',40000,20)
 insert into employees values (7004,'Manoj','Developer',40000,20),(7005,'abhay','Designer',35000,10),(7006,'uma','Tester',35000,30),(7007,'Gita','tech.writer',30000,40),(7008,'priya','tester',35000,30),(7009,'Nutan','Developer',45000,20),(7010,'Smita','analyst',20000,10)


 insert into  department values (10 , 'Design', 'Pune'), (20 , 'Developement', 'Pune') , (30 , 'Testing' , 'Mumbai') , (40 , 'Document' , 'Mumbai')

 insert into projects values (401 , 'inventory' ,  '01-Apr-11' , '01-Oct-11', '31-Oct-11' , 150000 , 1001 ) , (402 , 'accounting' , '01-Aug-11', '01-jan-11', 'null' , 500000, 1002)  
 insert into projects values (403 , 'Payroll' , '01-Oct-11' , '31-Dec-11' , 'null' , 50000 , 1003) , (404 , 'Contact Mgmt' , '01-Nov-11' , '31-Dec-11', 'null' , 500000,1004)