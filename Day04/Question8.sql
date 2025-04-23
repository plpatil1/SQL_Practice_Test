-- Q.8Write a query to find the names and numbers of all salespeople who had more than one customer.

-- Query:

          select s.sname,COUNT(c.cnum)as NoOfCustomers from  salespeople s join customers c using(snum) group by s.sname having COUNT(c.cnum)>1 ;



OUTPUT:
  
  
+---------------+---------------+
| sname         | NoOfCustomers |
+---------------+---------------+
| Jane Smith    |             2 |
| Monika Sharma |             2 |
| Raj Patel     |             2 |
+---------------+---------------+
3 rows in set (0.00 sec)
