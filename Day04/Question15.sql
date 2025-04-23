-- Q.15Write a query to find all customers with orders in the month of 'October'.

--Query:

    select o.odate, c.* from customers c join orders o using(cnum)  where MONTHNAME(o.odate)='October';

--OUTPUT:


+------------+------+------------------+----------+--------+------+
| odate      | cnum | cname            | city     | rating | snum |
+------------+------+------------------+----------+--------+------+
| 2023-10-25 | 2005 | TechZone Ltd     | San Jose |    220 | 1006 |
| 2023-10-11 | 2009 | Peak Performance | San Jose |    210 | 1006 |
| 2023-10-05 | 2010 | EcoMart          | London   |    160 | 1005 |
+------------+------+------------------+----------+--------+------+
3 rows in set (0.00 sec)
