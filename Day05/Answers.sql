


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










