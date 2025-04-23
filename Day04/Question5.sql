-- Q.5 Write a query to arrange the Orders table by descending customer number.

-- Query:
  
                 select * from customers order by cnum desc;


-- OUPUT: 


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
