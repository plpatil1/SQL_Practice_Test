-- Q.1 Write SQL statement which lists all customers with a rating of 100. 
-- Query: 
select * from customers where rating=100;

/*
+------+-----------+----------+--------+------+
| cnum | cname     | city     | rating | snum |
+------+-----------+----------+--------+------+
| 2001 | Acme Corp | New York |    100 | 1001 |
+------+-----------+----------+--------+------+
1 row in set (0.00 sec) */
