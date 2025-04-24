


mysql> select * from emp1 where job='Personal Assistant';
Empty set (0.01 sec)









mysql> select * from emp1 where ename like 'S%';
+-------+-------+---------+------+------------+---------+------+--------+---------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno | hobbyid |
+-------+-------+---------+------+------------+---------+------+--------+---------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |       7 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |       5 |
+-------+-------+---------+------+------------+---------+------+--------+---------+
2 rows in set (0.00 sec)













mysql> select empno,ename,job,mgr,MAX(sal) as HighestSal  from emp1 group by empno limit 5;
+-------+--------+----------+------+------------+
| empno | ename  | job      | mgr  | HighestSal |
+-------+--------+----------+------+------------+
|  7369 | SMITH  | CLERK    | 7902 |     800.00 |
|  7499 | ALLEN  | SALESMAN | 7698 |    1600.00 |
|  7521 | WARD   | SALESMAN | 7698 |    1250.00 |
|  7566 | JONES  | MANAGER  | 7839 |    2975.00 |
|  7654 | MARTIN | SALESMAN | 7698 |    1250.00 |
+-------+--------+----------+------+------------+
5 rows in set (0.00 sec)









mysql> select d.*, COUNT(e.deptno) from dept d join emp1 e using(deptno) group by deptno;
+--------+------------+------------+-----------------+
| deptno | dname      | locationid | COUNT(e.deptno) |
+--------+------------+------------+-----------------+
|     10 | ACCOUNTING |          1 |               3 |
|     20 | RESEARCH   |          2 |               5 |
|     30 | SALES      |          3 |               6 |
+--------+------------+------------+-----------------+
3 rows in set (0.00 sec)




mysql> select e.ename, h.hobbyname from emp1 e join hobby h using(hobbyid);
+--------+-------------+
| ename  | hobbyname   |
+--------+-------------+
| WARD   | Reading     |
| KING   | Reading     |
| MARTIN | Hiking      |
| BLAKE  | Hiking      |
| CLARK  | Photography |
| TURNER | Photography |
| JONES  | Gaming      |
| ADAMS  | Gaming      |
| SCOTT  | Cooking     |
| JAMES  | Cooking     |
| FORD   | Sports      |
| MILLER | Sports      |
| SMITH  | Music       |
| ALLEN  | Traveling   |
+--------+-------------+
14 rows in set (0.00 sec)



mysql> select * from emp1 where hobbyid like null;
Empty set (0.00 sec)






mysql> select e.ename, h.hobbyname from emp1 e join hobby h using(hobbyid);
+--------+-------------+
| ename  | hobbyname   |
+--------+-------------+
| WARD   | Reading     |
| KING   | Reading     |
| MARTIN | Hiking      |
| BLAKE  | Hiking      |
| CLARK  | Photography |
| TURNER | Photography |
| JONES  | Gaming      |
| ADAMS  | Gaming      |
| SCOTT  | Cooking     |
| JAMES  | Cooking     |
| FORD   | Sports      |
| MILLER | Sports      |
| SMITH  | Music       |
| ALLEN  | Traveling   |
+--------+-------------+
14 rows in set (0.01 sec)






mysql> select h.hobbyname, COUNT(e.hobbyid) as TotalEmp from emp1 e join hobby h using(hobbyid) group by e.hobbyid;
+-------------+----------+
| hobbyname   | TotalEmp |
+-------------+----------+
| Reading     |        2 |
| Hiking      |        2 |
| Photography |        2 |
| Gaming      |        2 |
| Cooking     |        2 |
| Sports      |        2 |
| Music       |        1 |
| Traveling   |        1 |
+-------------+----------+
8 rows in set (0.00 sec)








mysql> select e.sal from emp1 e join hobby h using(hobbyid) where  h.hobbyname like'Horse-Riding';
Empty set (0.00 sec)



mysql> select e.ename, d.dname, l.locationname from emp1 e join dept d join location l on e.deptno = d.deptno and d.locationid = l.locationid ;
+--------+------------+--------------+
| ename  | dname      | locationname |
+--------+------------+--------------+
| CLARK  | ACCOUNTING | New York     |
| KING   | ACCOUNTING | New York     |
| MILLER | ACCOUNTING | New York     |
| SMITH  | RESEARCH   | Dallas       |
| JONES  | RESEARCH   | Dallas       |
| SCOTT  | RESEARCH   | Dallas       |
| ADAMS  | RESEARCH   | Dallas       |
| FORD   | RESEARCH   | Dallas       |
| ALLEN  | SALES      | Chicago      |
| WARD   | SALES      | Chicago      |
| MARTIN | SALES      | Chicago      |
| BLAKE  | SALES      | Chicago      |
| TURNER | SALES      | Chicago      |
| JAMES  | SALES      | Chicago      |
+--------+------------+--------------+
14 rows in set (0.00 sec)





mysql> select deptno, SUM(sal) as Total from emp1 group by deptno  having deptno in( select deptno from dept where dname="IT Network") ;
Empty set (0.00 sec)






mysql> select( select sum(sal) from emp1 where job = "Manager")-( select sum(sal) from emp1 where job = "Assistant Manager") as Diff;
+------+
| Diff |
+------+
| NULL |
+------+
1 row in set (0.00 sec)








mysql> select e.ename, h.hobbyname from emp1 e, hobby h, location l, dept d  where e.hobbyid = h.hobbyid and e.deptno = d.deptno and d.locationid = l.locationid and l.locationname = "California";
Empty set (0.00 sec)





mysql> select d.dname, l.locationname from location l join dept d using(locationid) where l.locationid=1;
+------------+--------------+
| dname      | locationname |
+------------+--------------+
| ACCOUNTING | New York     |
| MARKETING  | New York     |
+------------+--------------+
2 rows in set (0.00 sec)





mysql> select * from emp1 e, location l, dept d where d.deptno = e.deptno and l.locationid = d.locationid and l.locationid in( select l.locationid from location l, emp1 e, dept d where l.locationid = d.locationid and d.deptno = e.deptno and e.ename = "Jay");
Empty set (0.00 sec)











