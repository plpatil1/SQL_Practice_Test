-- Q.12 Write a query to find customers in 'San Jose' who has a rating above 200.

-- Query:

     select * from customers where rating>200 and city='San Jose';

-- OUTPUT:

+------+------------------+----------+--------+------+
| cnum | cname            | city     | rating | snum |
+------+------------------+----------+--------+------+
| 2005 | TechZone Ltd     | San Jose |    220 | 1006 |
| 2009 | Peak Performance | San Jose |    210 | 1006 |
+------+------------------+----------+--------+------+
2 rows in set (0.00 sec)
