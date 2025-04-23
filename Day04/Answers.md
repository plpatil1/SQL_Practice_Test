### Q.1 Write SQL statement which lists all customers with a rating of 100. 



mysql> select * from customers where rating=100;
+------+-----------+----------+--------+------+
| cnum | cname     | city     | rating | snum |
+------+-----------+----------+--------+------+
| 2001 | Acme Corp | New York |    100 | 1001 |
+------+-----------+----------+--------+------+
1 row in set (0.00 sec)






Q.2 Write SQL statement that displays all the salespeople who are living in city ‘London’.

mysql> select * from customers where city='London';
+------+-------------------+--------+--------+------+
| cnum | cname             | city   | rating | snum |
+------+-------------------+--------+--------+------+
| 2007 | Urban Furnishings | London |    130 | 1005 |
| 2010 | EcoMart           | London |    160 | 1005 |
+------+-------------------+--------+--------+------+
2 rows in set (0.00 sec)




