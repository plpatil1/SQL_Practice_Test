-- Q.14 Write a query to list all the orders of salesperson 'Monika' from the Orders table.

-- Query: 

         select * from orders where snum in(select snum from salespeople where sname LIKE'Monika%');


-- OUTPUT:

+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3007 | 2999.99 | 2023-07-01 | 2007 | 1005 |
| 3011 | 2900.00 | 2023-10-05 | 2010 | 1005 |
+------+---------+------------+------+------+
2 rows in set (0.00 sec)
