-- Q.2 Write SQL statement that displays all the salespeople who are living in city ‘London’.
--Query: 
            select * from customers where city='London';

/*
+------+-------------------+--------+--------+------+
| cnum | cname             | city   | rating | snum |
+------+-------------------+--------+--------+------+
| 2007 | Urban Furnishings | London |    130 | 1005 |
| 2010 | EcoMart           | London |    160 | 1005 |
+------+-------------------+--------+--------+------+
2 rows in set (0.00 sec)
*/
