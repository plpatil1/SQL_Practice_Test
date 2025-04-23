-- Q.9 Write a query to count the orders of each of the salespeople and print the results in descending

-- Query: 

select s.*, COUNT(o.onum)total from salespeople s join orders o using(snum) group by o.snum order by total desc;



--OUTPUT:
  
+------+---------------+-------------+------+-------+
| snum | sname         | city        | comm | total |
+------+---------------+-------------+------+-------+
| 1006 | Raj Patel     | San Jose    | 0.14 |     4 |
| 1002 | Jane Smith    | Chicago     | 0.12 |     3 |
| 1001 | John Doe      | New York    | 0.10 |     2 |
| 1005 | Monika Sharma | London      | 0.13 |     2 |
| 1003 | Mike Johnson  | Los Angeles | 0.15 |     1 |
| 1004 | Emily Davis   | Dallas      | 0.11 |     1 |
| 1007 | Liam Chen     | Toronto     | 0.10 |     1 |
+------+---------------+-------------+------+-------+
7 rows in set (0.00 sec)
