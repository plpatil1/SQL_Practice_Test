## DBT Test - 23-04-2025


#### DataBase Details With Data 



##### Table 1 - salespeople


mysql> select * from salespeople;
+------+---------------+-------------+------+
| snum | sname         | city        | comm |
+------+---------------+-------------+------+
| 1001 | John Doe      | New York    | 0.10 |
| 1002 | Jane Smith    | Chicago     | 0.12 |
| 1003 | Mike Johnson  | Los Angeles | 0.15 |
| 1004 | Emily Davis   | Dallas      | 0.11 |
| 1005 | Monika Sharma | London      | 0.13 |
| 1006 | Raj Patel     | San Jose    | 0.14 |
| 1007 | Liam Chen     | Toronto     | 0.10 |
+------+---------------+-------------+------+
7 rows in set (0.00 sec)




##### Table 2 - orders 




mysql> select * from customers;
+------+--------------------+-------------+--------+------+
| cnum | cname              | city        | rating | snum |
+------+--------------------+-------------+--------+------+
| 2001 | Acme Corp          | New York    |    100 | 1001 |
| 2002 | Global Tech        | Chicago     |    200 | 1002 |
| 2003 | SuperMart          | Dallas      |    150 | 1004 |
| 2004 | Fresh Foods        | Los Angeles |    120 | 1003 |
| 2005 | TechZone Ltd       | San Jose    |    220 | 1006 |
| 2006 | Bright Electronics | Toronto     |    180 | 1007 |
| 2007 | Urban Furnishings  | London      |    130 | 1005 |
| 2008 | Daily Supplies     | Chicago     |     90 | 1002 |
| 2009 | Peak Performance   | San Jose    |    210 | 1006 |
| 2010 | EcoMart            | London      |    160 | 1005 |
+------+--------------------+-------------+--------+------+
10 rows in set (0.00 sec)








##### Table 3 - orders




mysql> select * from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 | 1500.00 | 2023-01-15 | 2001 | 1001 |
| 3002 | 2500.50 | 2023-02-10 | 2002 | 1002 |
| 3003 |  500.00 | 2023-03-05 | 2003 | 1004 |
| 3004 | 1800.75 | 2023-04-20 | 2004 | 1003 |
| 3005 | 3400.00 | 2023-05-12 | 2005 | 1006 |
| 3006 |  875.00 | 2023-06-18 | 2006 | 1007 |
| 3007 | 2999.99 | 2023-07-01 | 2007 | 1005 |
| 3008 |  620.50 | 2023-08-22 | 2008 | 1002 |
| 3009 | 1520.00 | 2023-09-10 | 2009 | 1006 |
| 3010 | 4500.75 | 2023-10-25 | 2005 | 1006 |
| 3011 | 2900.00 | 2023-10-05 | 2010 | 1005 |
| 3012 |  750.00 | 2023-10-11 | 2009 | 1006 |
| 3013 | 1300.25 | 2023-11-15 | 2002 | 1002 |
| 3014 | 1650.90 | 2023-12-01 | 2001 | 1001 |
+------+---------+------------+------+------+
14 rows in set (0.00 sec)
