-- Q10. Write a query to list the Customer table that are located in 'San Jose'.

--Query:

    select * from customers where city = 'San Jose';


-- OUTPUT:


  
+------+------------------+----------+--------+------+
| cnum | cname            | city     | rating | snum |
+------+------------------+----------+--------+------+
| 2005 | TechZone Ltd     | San Jose |    220 | 1006 |
| 2009 | Peak Performance | San Jose |    210 | 1006 |
+------+------------------+----------+--------+------+
2 rows in set (0.00 sec)
