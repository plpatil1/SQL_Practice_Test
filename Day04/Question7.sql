-- Q.7 Write a query to list names of all customers matched with the salespeople serving them.

-- Query: 
 
      select s.sname, c.cname from customers c join salespeople s using(snum);


OUTPUT: 

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
