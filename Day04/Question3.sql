-- Q.3 Write SQL statement to find the largest order taken by each salesperson.

--Query:
           select DISTINCT (s.sname), max(o.amt) as highest from orders o join salespeople s using(snum) group by s.sname;

/*

+---------------+---------+
| sname         | highest |
+---------------+---------+
| John Doe      | 1650.90 |
| Jane Smith    | 2500.50 |
| Mike Johnson  | 1800.75 |
| Emily Davis   |  500.00 |
| Monika Sharma | 2999.99 |
| Raj Patel     | 4500.75 |
| Liam Chen     |  875.00 |
+---------------+---------+
7 rows in set (0.00 sec)

*/
