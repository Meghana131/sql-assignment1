-----assigemnt 3 set 2

select *from emp where job = 'manager'

select ename , sal from emp where sal >1000
 
select ename ,sal from emp where ename ! ='james'

select *from emp where ename like 'S%'

select *from emp where ename like 'A%'

select *from emp where ename like '__L%'

select sal=(sal/30) from emp where ename = 'jones'

select sum(sal) from emp

select avg(sal) as [Average annual salary] from emp

select ename ,job,sal from emp where deptno! = 30 or job! = 'salesman'

select distinct dname from dept inner join emp on emp.deptno = dept..deptno

select ename as employee ,sal as [monthly salary] from emp where sal > 1500 and (deptno = 10 or deptno =30)

select ename,job,sal from emp where (job = 'manager' or job ='analyst') and sal! = 3000 and sal! = 5000

select ename,sal=sal+(sal*10/100) , comm from emp where comm>sal

select *from emp where ename like '%LL%' and(deptno= 30 or mgr_id = 7782)

select ename,sal from emp where job = 'analyst' and sal > 1200 and deptno=20 order by ename asc

select dept.dname,emp.ename from dept inner join emp on dept.deptno = emp.deptno  order by  dept.dname asc , emp.ename desc

select ename,empno,datediff(year,hiredate,getdate()) as experience from EMP where ename = 'miller'

