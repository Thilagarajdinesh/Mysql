create database ipl;
use ipl;
create table myipl(EMP_no bigint,E_name varchar(50),Job varchar(50),MGR int,Hiredate date,sal bigint,comm int,deptno int);
insert into myipl(     EMP_no,E_name,Job,MGR,Hiredate,sal,comm,deptno) values (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
(7698,'BLACK','MANAGER',7839,'1981-05-01',2850,NULL,30),(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,null,10),
(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20),(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,null,20),
(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
select * from myipl;
create table dept(DEPTNO int,DNAME varchar(25),LOC varchar(25));
insert into dept(DEPTNO,DNAME,LOC)values(10,'ACCOUNTING','NEW YORK'),(20,'RESEARCH','DALLAS'),(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');
SELECT * FROM dept;
select * ,sal*12 as Annual_salary from myipl;
select E_name,deptno from myipl where deptno=10;
select E_name,sal from myipl where sal>1250;
select E_name,sal from myipl where sal>3000;
select job,sal from myipl where E_name='David';
select *,sal*12 as Annual_salary from myipl where E_name='smith';
select E_name from myipl where job='clerk';
select sal from myipl where job='salesman';
select * from myipl where sal>2000;
select * from myipl where E_name='jones';
select * from myipl where hiredate='1920-04-03';
select Emp_no,E_name from myipl where deptno=30;
select E_name,hiredate from myipl where hiredate>2021;
select * from myipl where job='manager';
select E_name,sal from myipl where comm=725;
select * from myipl where comm>sal;
select Emp_no from myipl where hiredate<'2022-01-01';
select * from myipl where job='manager';
select * from myipl where sal>2000;
select E_name,sal,sal*12   as annual_salary from myipl where sal*12>3000;
select E_name from myipl where sal<2000 && deptno=10;
select sum(sal) from myipl where job='clerk';
select avg(sal) from myipl;
select E_name from myipl where E_name like 'A%';
select count(emp_no) from myipl where job='clerk' || job='manager';
select sum(sal) from myipl where month(hiredate)='02';
select count(emp_no) from myipl where mgr=7839;
select count(emp_no) from myipl where comm is not null && deptno=30;
select count(emp_no) from myipl where E_name like '%A%';
select count(emp_no),sum(sal) from myipl where E_name like '%ll%';
select avg(sal),sum(sal),count(emp_no),max(sal) from myipl where job='manager';
select * from myipl;
select * from myipl where sal>1250 && sal<2000;
select * from myipl where sal<1500 || job='teamleader';
select * from myipl where job='clerk' && sal<1300;
select E_name,hiredate from myipl where job='manager' && deptno=30;
select * from myipl where deptno=30 || job='supervisior';
select E_name from myipl where sal<1100 && job='clerk';
select *,sal*12 as annualsal from myipl where deptno=30 && job='salesman'&& sal*12>1500;
select * from myipl where deptno=30 || job='supervisior';
select E_name from myipl where sal<1100 && job='clerk';
select emp_no,E_name from myipl where job ='manager' && deptno=20;
select * from myipl where deptno=20 || deptno=30;
select * from myipl where job='engineer'&& deptno=10;
select * from myipl where job='doctor' && sal=2980;
select E_name,deptno from myipl  where deptno=20 || deptno=30;
select * from myipl where job not in ('clerk','manager');
select * from myipl where year(hiredate)>=2020 && year(hiredate)<=2021;
select * from myipl where year(hiredate)=2021;
select * from myipl where year (hiredate)!=2022;
select E_name,comm  from myipl where comm is null;
select * from myipl where mgr is null;
select * from myipl where comm is not null;
select E_name from myipl where E_name like 'A%';
select E_name from myipl where E_name like '%K';
select E_name from myipl where E_name like '%A%';
select E_name from myipl where E_name like '__A%';
select E_name from myipl where E_name like '__R___';
select E_name,deptno from myipl where job='clerk' && deptno=10 || deptno=20;
select * from myipl;
select * from myipl where job in('clerk','manager') && deptno=10;
select E_name from myipl where deptno in(10,20,30,40);
select * from myipl where mgr =7902 && mgr=7839;
select * from myipl where job in('clerk','manager','salesman');
select E_name from myipl where year(hiredate)>2021 && year(hiredate)<22;
select * from myipl where year(hiredate)>2021 && (deptno=10 || deptno=30);
select deptno from myipl group by deptno having count(*)>=3;
select deptno,max(sal),min(sal) from myipl where sal!=1000 group by deptno ;
select job,count(emp_no) from myipl group by job;
select job,count(emp_no) from myipl where job!='superviser' group by job ;
select deptno,sum(sal) from myipl group by deptno;
select count(emp_no) from myipl where job='manager' group by deptno;
select deptno,avg(sal) from myipl where deptno!=30 group by deptno;
select deptno,count(emp_no) from myipl where E_name like 'A%' group by deptno;
select count(emp_no),avg(sal) from myipl where sal>2000 group by deptno;
select deptno,count(emp_no),sum(sal) from myipl where job='salesman' group by deptno;
select count(emp_no),max(sal) from myipl group by deptno;
select count(sal) from myipl;
select deptno,count(emp_no) from myipl where sal=sal group by deptno;
select deptno,count(emp_no) from myipl where job='clerk' group by deptno having count(*)>=2;
select deptno,sum(sal) from myipl group by deptno having count(*)>=4;
select deptno from myipl group by deptno having count(e_name)>3;
select deptno,count(e_name) from myipl  where job='manager' group by deptno having count(e_name)=2;
select job,max(sal) from myipl where sal>2600 group by job ;
select sal from myipl group by sal having count(*)>1;
select avg(sal) from myipl group by deptno having avg(sal)<3000;
select hiredate from myipl group by hiredate having count(*)>1;
select min(sal),max(sal) from myipl group by job having min(sal)>1000 and max(sal)<5000;
select deptno,max(sal) from myipl group by deptno;
select E_name,Emp_no,sal from myipl where sal>1250 or deptno=30;
select * from myipl where sal=(select max(sal)from myipl);
select max(sal) from myipl where sal<(select max(sal)from myipl);
select E_name,sal from myipl where sal >=(select sal from myipl where e_name='allen'); 
select * from myipl where job=(select job from myipl where e_name='ward');
select E_name,sal from myipl where sal >(select sal from myipl where e_name='adams');
select E_name,sal from myipl where sal <(select sal from myipl where e_name='king');
select E_name,deptno from myipl where deptno=(select deptno from myipl where e_name='jones');
select E_name,job from myipl where job=(select job from myipl where e_name='james');
select E_name,hiredate from myipl where hiredate<(select hiredate from myipl where e_name='turner');
select E_name,hiredate from myipl where hiredate>(select hiredate from myipl where job='president');
select E_name,sal from myipl where sal<(select sal from myipl where emp_no=7839);
select * from myipl where hiredate<(select hiredate from myipl where E_name='ward');
select E_name,deptno from myipl where sal>(select sal from myipl where E_name='allen');
select E_name ,sal from myipl where sal>(select sal from myipl where E_name='scott' )&&  hiredate< (select hiredate from myipl where E_name='king');
select * from myipl where job=(select job from myipl where E_name='turner')&& sal<5000;
select E_name,sal from myipl where sal >(select sal from myipl where E_name='miller')&& sal<(select sal from myipl where E_name='allen');
select * from myipl where deptno=20 && job=(select job from myipl where E_name='smith');
select * from myipl where job='manager'&& deptno=(select deptno from myipl where E_name='turner');
select E_name,hiredate from myipl where hiredate>'1980-01-01' && hiredate <(select hiredate from myipl where E_name='king');
select * from myipl where sal>(select sal from myipl where E_name='scott')&&sal<(select sal from myipl where E_name='king');
select E_name from myipl where E_name like 'A%' && deptno=(select deptno from myipl where E_name='blake');
select * from myipl where job='clerk' &&deptno=(select deptno from myipl where E_name='turner');
select E_name,comm  from myipl where comm>0 && job=(select job from myipl where E_name='smith'); 
select E_name,sal,job from myipl where sal*12 > sal>(select sal from myipl where E_name='smith')&&sal<(select sal from myipl where E_name='king');
select E_name,sal,sal*12 as annualsal from myipl where sal<(select sal from myipl where E_name='black')&& sal>3500;
select myipl.*,dept.* from myipl left join dept on myipl.deptno=dept.deptno;
select myipl.*,dept.* from myipl right join dept on myipl.deptno=dept.deptno;
select myipl.*,dept.* from myipl inner join dept on myipl.deptno=dept.deptno;
select myipl.sal,dept.loc,dname from myipl inner join dept on myipl.deptno=dept.deptno where e_name='allen';
select dept.loc from myipl inner join dept on myipl.deptno=dept.deptno where job in (select job from myipl where e_name='scott');
select myipl.*,dept.* from myipl cross join dept;
select e1.e_name as empname,e2.e_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no;
select e1.e_name as  empname,e2.e_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no;
select distinct sal from myipl order by sal desc limit 1 offset 2;
select E_name from myipl group by sal,E_name order by sal limit 1 offset 1; 
select distinct sal from myipl order by sal  limit 1 offset 2;
select distinct sal from myipl order by sal desc limit 1 offset 3;
select  distinct sal ,E_name from myipl group by sal,E_name order by sal desc limit 1 offset 2;
select emp_no from myipl where sal=(select max(sal) from myipl);
select dname from dept inner join myipl on dept.deptno=myipl.deptno where sal=(select distinct sal from myipl order by sal desc limit 1 offset 3);
select dname,loc from dept inner join myipl on dept.deptno=myipl.deptno where hiredate=(select hiredate from myipl order by hiredate desc limit 1 offset 1);
select loc from dept inner join myipl on dept.deptno=myipl.deptno where hiredate=(select hiredate from myipl order by hiredate limit 1);
select e_name,dname from dept inner join myipl on dept.deptno=myipl.deptno;
select e_name,dname from myipl inner join dept on dept.deptno=myipl.deptno where dept.deptno=30 && myipl.deptno=30;
select e_name,loc from dept inner join myipl on dept.deptno=myipl.deptno;
select sal,dname from dept inner join myipl on dept.deptno=myipl.deptno where job='clerk';
select sal,dname,sal*12 as annualsalary from dept inner join myipl on dept.deptno=myipl.deptno where sal>2340;
select e_name,dname from dept inner join myipl on dept.deptno=myipl.deptno where dname like '%A%';
select E_name,dname from dept inner join myipl on dept.deptno=myipl.deptno where job='salesman';
select dname,job from dept inner join myipl on dept.deptno=myipl.deptno where dname like 'S%' && job like 'S%';
select dname,mgr from dept inner join myipl on dept.deptno=myipl.deptno where mgr=7839;
select dname,hiredate from dept inner join myipl on dept.deptno=myipl.deptno where year(hiredate)>1983 && ( job='accounting' ||job='research');
select e_name,dname from myipl inner join dept on dept.deptno=myipl.deptno where comm is not null  and myipl.deptno in (10,30);
select dname,emp_no from dept inner join myipl on dept.deptno=myipl.deptno where (myipl.emp_no=7839 or myipl.emp_no=7902) and dept.loc='new york';
select e1.E_name as empname,e2.E_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no;
select e1.E_name as empname,e1.sal as Empsal,e2.E_name as managername,e2.sal as managersal from myipl e1,myipl e2 where e1.mgr=e2.emp_no && e1.sal>e2.sal;
select e1.E_name as empname,e2.E_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no and e1.job='clerk';
select e1.E_name,e2.job from myipl e1,myipl e2 where e1.mgr=e2.emp_no && (e1.deptno=10 || e1.deptno=30);
select e1.e_name,e2.sal from myipl e1,myipl e2 where e1.mgr=e2.emp_no && (e1.sal &&e2.sal>2300);
select e1.e_name,e2.hiredate from myipl e1,myipl e2 where e1.mgr=e2.emp_no &&  e2.hiredate>1982;
select e1.e_name,e2.comm from myipl e1,myipl e2 where e1.mgr=e2.emp_no && e1.job='salesman' && e2.deptno=30;
select e1.e_name as empname,e2.e_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no && (e1.sal>e2.sal);
select e1.e_name as empname,e1.hiredate as emphire,e2.e_name as managername,e2.hiredate as managerhire from myipl e1,myipl e2 where e1.mgr=e2.emp_no && e1.hiredate>e2.hiredate;
select e1.E_name as empname,e2.E_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no and (e1.job=e2.job);
select e1.E_name as empname,e2.E_name as managername from myipl e1,myipl e2 where e1.mgr=e2.emp_no and e2.job='manager';
select e1.E_name as empname,e1.sal*12 as empannual,e2.E_name as managername,e2.sal*12 as managerannual from myipl e1,myipl e2 where e1.mgr=e2.emp_no && (e1.deptno=10||e1.deptno=30)&& e2.sal>e1.sal;
delimiter $$
create procedure pname()
begin
select* from myipl;
select * from dept;
end $$

create view vname as
select * from myipl;
select *from vname;
