-- Q.4 Write SQL statement to find the largest order taken by each salesperson on each date.

-- Query: 
           
          select DISTINCT o.odate, s.sname, o.snum, o.amt from orders o join salespeople s using(snum) where amt in(select DISTINCT  max(o.amt) as highest from orders o join salespeople s using(snum) group by s.sname);


-- OUTPUT: 
+------------+---------------+------+---------+
| odate      | sname         | snum | amt     |
+------------+---------------+------+---------+
| 2023-12-01 | John Doe      | 1001 | 1650.90 |
| 2023-02-10 | Jane Smith    | 1002 | 2500.50 |
| 2023-04-20 | Mike Johnson  | 1003 | 1800.75 |
| 2023-03-05 | Emily Davis   | 1004 |  500.00 |
| 2023-07-01 | Monika Sharma | 1005 | 2999.99 |
| 2023-10-25 | Raj Patel     | 1006 | 4500.75 |
| 2023-06-18 | Liam Chen     | 1007 |  875.00 |
+------------+---------------+------+---------+
7 rows in set (0.00 sec)
