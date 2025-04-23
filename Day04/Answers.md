### Q.1 Write SQL statement which lists all customers with a rating of 100. 



mysql> select * from customers where rating=100;
+------+-----------+----------+--------+------+
| cnum | cname     | city     | rating | snum |
+------+-----------+----------+--------+------+
| 2001 | Acme Corp | New York |    100 | 1001 |
+------+-----------+----------+--------+------+
1 row in set (0.00 sec)






### Q.2 Write SQL statement that displays all the salespeople who are living in city ‘London’.

mysql> select * from customers where city='London';
+------+-------------------+--------+--------+------+
| cnum | cname             | city   | rating | snum |
+------+-------------------+--------+--------+------+
| 2007 | Urban Furnishings | London |    130 | 1005 |
| 2010 | EcoMart           | London |    160 | 1005 |
+------+-------------------+--------+--------+------+
2 rows in set (0.00 sec)




### Q.3 Write SQL statement to find the largest order taken by each salesperson.

mysql> select DISTINCT (s.sname), max(o.amt) as highest from orders o join salespeople s using(snum) group by s.sname;
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







### Q.4 Write SQL statement to find the largest order taken by each salesperson on each date.

mysql> select DISTINCT o.odate, s.sname, o.snum, o.amt from orders o join salespeople s using(snum) where amt in(select DISTINCT  max(o.amt) as highest from orders o join salespeople s using(snum) group by s.sname);
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






### Q.5 Write a query to arrange the Orders table by descending customer number.
mysql> select * from customers order by cnum desc;

+------+--------------------+-------------+--------+------+
| cnum | cname              | city        | rating | snum |
+------+--------------------+-------------+--------+------+
| 2010 | EcoMart            | London      |    160 | 1005 |
| 2009 | Peak Performance   | San Jose    |    210 | 1006 |
| 2008 | Daily Supplies     | Chicago     |     90 | 1002 |
| 2007 | Urban Furnishings  | London      |    130 | 1005 |
| 2006 | Bright Electronics | Toronto     |    180 | 1007 |
| 2005 | TechZone Ltd       | San Jose    |    220 | 1006 |
| 2004 | Fresh Foods        | Los Angeles |    120 | 1003 |
| 2003 | SuperMart          | Dallas      |    150 | 1004 |
| 2002 | Global Tech        | Chicago     |    200 | 1002 |
| 2001 | Acme Corp          | New York    |    100 | 1001 |
+------+--------------------+-------------+--------+------+
10 rows in set (0.00 sec)



### Q.6Write a query to find salespeople name, city and current order details like order number, amount and order date from the Orders table.


mysql> select s.sname, s.city,o.onum, o.amt, o.odate from orders o join salespeople s using(snum);
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




### Q.7 Write a query to list names of all customers matched with the salespeople serving them.

mysql> select s.sname, c.cname from customers c join salespeople s using(snum);
+---------------+--------------------+
| sname         | cname              |
+---------------+--------------------+
| John Doe      | Acme Corp          |
| Jane Smith    | Global Tech        |
| Jane Smith    | Daily Supplies     |
| Mike Johnson  | Fresh Foods        |
| Emily Davis   | SuperMart          |
| Monika Sharma | Urban Furnishings  |
| Monika Sharma | EcoMart            |
| Raj Patel     | TechZone Ltd       |
| Raj Patel     | Peak Performance   |
| Liam Chen     | Bright Electronics |
+---------------+--------------------+
10 rows in set (0.00 sec)





### Q.8Write a query to find the names and numbers of all salespeople who had more than one customer.

mysql> select s.sname,COUNT(c.cnum)as NoOfCustomers from  salespeople s join customers c using(snum) group by s.sname having COUNT(c.cnum)>1 ;
+---------------+---------------+
| sname         | NoOfCustomers |
+---------------+---------------+
| Jane Smith    |             2 |
| Monika Sharma |             2 |
| Raj Patel     |             2 |
+---------------+---------------+
3 rows in set (0.00 sec)




### Q.9 Write a query to count the orders of each of the salespeople and print the results in descending


mysql> select s.*, COUNT(o.onum)total from salespeople s join orders o using(snum) group by o.snum order by total desc;
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





Q10. Write a query to list the Customer table that are located in 'San Jose'.

mysql> select * from customers where city = 'San Jose';
+------+------------------+----------+--------+------+
| cnum | cname            | city     | rating | snum |
+------+------------------+----------+--------+------+
| 2005 | TechZone Ltd     | San Jose |    220 | 1006 |
| 2009 | Peak Performance | San Jose |    210 | 1006 |
+------+------------------+----------+--------+------+
2 rows in set (0.00 sec)






### Q.11 Write a query to match salespeople to customers according to what city they lived in.

mysql> select s.sname, c.cname, c.city from customers c join salespeople s where c.city=s.city;
+---------------+--------------------+-------------+
| sname         | cname              | city        |
+---------------+--------------------+-------------+
| John Doe      | Acme Corp          | New York    |
| Jane Smith    | Global Tech        | Chicago     |
| Emily Davis   | SuperMart          | Dallas      |
| Mike Johnson  | Fresh Foods        | Los Angeles |
| Raj Patel     | TechZone Ltd       | San Jose    |
| Liam Chen     | Bright Electronics | Toronto     |
| Monika Sharma | Urban Furnishings  | London      |
| Jane Smith    | Daily Supplies     | Chicago     |
| Raj Patel     | Peak Performance   | San Jose    |
| Monika Sharma | EcoMart            | London      |
+---------------+--------------------+-------------+
10 rows in set (0.00 sec)






### Q.12 Write a query to find customers in 'San Jose' who has a rating above 200.

mysql> select * from customers where rating>200 and city='San Jose';
+------+------------------+----------+--------+------+
| cnum | cname            | city     | rating | snum |
+------+------------------+----------+--------+------+
| 2005 | TechZone Ltd     | San Jose |    220 | 1006 |
| 2009 | Peak Performance | San Jose |    210 | 1006 |
+------+------------------+----------+--------+------+
2 rows in set (0.00 sec)





### Q.13 Write a query to list the names and commissions of all salespeople in 'London'.


mysql> select sname, comm from salespeople where city='London';
+---------------+------+
| sname         | comm |
+---------------+------+
| Monika Sharma | 0.13 |
+---------------+------+
1 row in set (0.00 sec)









### Q.14 Write a query to list all the orders of salesperson 'Monika' from the Orders table.


mysql> select * from orders where snum in(select snum from salespeople where sname LIKE'Monika%');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3007 | 2999.99 | 2023-07-01 | 2007 | 1005 |
| 3011 | 2900.00 | 2023-10-05 | 2010 | 1005 |
+------+---------+------------+------+------+
2 rows in set (0.00 sec)






### Q.15Write a query to find all customers with orders in the month of 'October'.


mysql> select o.odate, c.* from customers c join orders o using(cnum)  where MONTHNAME(o.odate)='October';
+------------+------+------------------+----------+--------+------+
| odate      | cnum | cname            | city     | rating | snum |
+------------+------+------------------+----------+--------+------+
| 2023-10-25 | 2005 | TechZone Ltd     | San Jose |    220 | 1006 |
| 2023-10-11 | 2009 | Peak Performance | San Jose |    210 | 1006 |
| 2023-10-05 | 2010 | EcoMart          | London   |    160 | 1005 |
+------------+------+------------------+----------+--------+------+
3 rows in set (0.00 sec)





