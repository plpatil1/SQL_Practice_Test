-- Q.6Write a query to find salespeople name, city and current order details like order number, amount and order date from the Orders table.

-- Query: 

     select s.sname, s.city,o.onum, o.amt, o.odate from orders o join salespeople s using(snum);


-- OUTPUT: 


+---------------+-------------+------+---------+------------+
| sname         | city        | onum | amt     | odate      |
+---------------+-------------+------+---------+------------+
| John Doe      | New York    | 3001 | 1500.00 | 2023-01-15 |
| John Doe      | New York    | 3014 | 1650.90 | 2023-12-01 |
| Jane Smith    | Chicago     | 3002 | 2500.50 | 2023-02-10 |
| Jane Smith    | Chicago     | 3008 |  620.50 | 2023-08-22 |
| Jane Smith    | Chicago     | 3013 | 1300.25 | 2023-11-15 |
| Mike Johnson  | Los Angeles | 3004 | 1800.75 | 2023-04-20 |
| Emily Davis   | Dallas      | 3003 |  500.00 | 2023-03-05 |
| Monika Sharma | London      | 3007 | 2999.99 | 2023-07-01 |
| Monika Sharma | London      | 3011 | 2900.00 | 2023-10-05 |
| Raj Patel     | San Jose    | 3005 | 3400.00 | 2023-05-12 |
| Raj Patel     | San Jose    | 3009 | 1520.00 | 2023-09-10 |
| Raj Patel     | San Jose    | 3010 | 4500.75 | 2023-10-25 |
| Raj Patel     | San Jose    | 3012 |  750.00 | 2023-10-11 |
| Liam Chen     | Toronto     | 3006 |  875.00 | 2023-06-18 |
+---------------+-------------+------+---------+------------+
14 rows in set (0.00 sec)
