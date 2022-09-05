 create table Dept
 (
 deptno int primary key,
 dname varchar(30),
 loc varchar(30)
 )
 insert into dept values (10 , 'ACCOUNTING' , 'NEW YORK' ) , (20 , 'RESEARCH' , 'DALLAS' ) , (30 , 'SALES' , 'CHICAGO') , (40 , 'OPERATIONS', 'BOSTON')
 
select *from Dept

create table Emp
( 
empno int primary key,
ename varchar(30),
job varchar(30),
mgr_id int ,
hiredate date,
sal float,
comm int,
deptno int foreign key references Dept(deptno) 
)
insert into Emp values (7369 , 'SMITH' , 'CLERK' , 7902 , '17-DEC-80' , 800 , NULL , 20)
insert into Emp values (7499 , 'ALLEN' , 'SALESMAN' , 7698 , '20-FEB-81' , 1250 ,NULL , 30 )
insert into Emp values (7521 , 'WARB' , 'SALESMAN' , 7698 , '22-FEB-81'  ,  1250, 500 , 30 )
insert into Emp values (7566 , 'JONES' , 'MANAGER'  , 7839 , '02-APR-81' , 2975 , NULL , 20 )
insert into Emp values (7654 , 'MARTIN' , 'SALESMAN' , 7698 , '28-SEP-81' , 1250 , 1400 , 30)
insert into Emp values (7698 , 'BLAKE' , 'MANAGER' , 7839 , '01-MAY-81' , NULL , 2850 , 30  )
insert into Emp values (7782 , 'CLARK' , 'MANAGER' , 7839 , '09-JUN-81' , NULL , 2450 ,  10)
insert into Emp values (7788 , 'SCOTT' , 'ANALYST' , 7566 , '19-APR-87' , NULL , 3000 , 20)
insert into Emp values (7839 , 'KING' , 'PRESIDENT' , NULL , '17-NOV-81' , NULL , 5000 , 10)
insert into Emp values (7844 , 'TURNER' , 'SALESMAN', 7698 , '08-SEP-81' , 1500 , NULL,  30  )
insert into Emp values (7876 , 'ADAMS ' , 'CLERK', 7788 , '23-MAY-87' , NULL , 1100 ,  20)
insert into Emp values (7900, 'JAMES' , 'CLERK' , 7698 , '03-DEC-81' , NULL , 1100 ,  20)
insert into Emp values (7902 , 'FORD ' , 'ANALYST' , 7566 , '23-MAY-87' , NULL , 1100 , 20)
insert into Emp values (7934 , 'MILLER ' , 'CLERK ', 7782 , '23-JAN-81' , NULL , 1300 , 10 )
select * from Emp
---list employee name along with the manager
 select e1.ename as 'employee name' , m1.ename as 'manager name'
 from  emp e1 inner join  emp m1 on e1.mgr_id = m1.empno

 ---otter join 
---find all managers who have more than 2 employess 
---1.with manager id
select mgr_id ,count (empno) from emp group  by mgr_id 
having count(empno)>2

---subquery 
select ename,job,sal from emp where job = (select job from emp where ename = 'james') and
sal > (select sal from emp where empno=7369)

---nested subquery
select ename,job,slary from emp where job = (select job from emp where ename = 'james')and
sal>(select sal from emp where  empno = (select empno from emp where ename = 'smith ' )

select deptno,min(sal) from emp group by deptno
having min(sal)>(select min(sal) from emp where deptno=20  )
order by deptno desc

select*from emp
---all empid,name,sal,job where sal is less than of a manager and but employee not sales
select ename ,sal,job from emp where sal<(select min(sal) from  emp where job ='manager')

select ename,sal,job from emp
where sal <any (select sal from emp where job='manager')
and job <>'manager'

---set 1 Assigement 
 
select * from emp where  ename like 'A' 

select *from emp where mgr_id is null

select ename,empno,sal from emp where sal between 1200 and 1400

select *from emp

update emp set sal=sal+(sal*10/100) where deptno=20


select count(job) as total_no_clerks from emp where job = 'vlerk' 

select avg(sal) as average_salary , count(job) no_of_ppl_working from emp where job='clerk'

select min (sal) as lowest_salary , max(sal) as highest_salary from emp

select * from dept where deptno not in (select deptno from emp)

select ename ,sal from emp where job = 'analyst' and sal>1200 and deptno=20 order by ename asc

select deptno,count(deptno) as [no of employees],sum(sal) from emp gruop by deptno

select ename , sal from emp where ename in ('miller' , 'smith' , )

select ename from emp where ename LIKE 'a%' or ename like 'M%'

select sum(12*sal) as [smith yearly salary] from emp where ename = 'smitg'

select ename ,sal from emp where sal not between 1200 and 1400




