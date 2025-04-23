-- Q.13 Write a query to list the names and commissions of all salespeople in 'London'.

-- Query: 

       select sname, comm from salespeople where city='London';


--OUTPUT:


+---------------+------+
| sname         | comm |
+---------------+------+
| Monika Sharma | 0.13 |
+---------------+------+
1 row in set (0.00 sec)
