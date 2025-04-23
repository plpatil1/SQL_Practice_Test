-- Q.11 Write a query to match salespeople to customers according to what city they lived in.
-- Query:

       select s.sname, c.cname, c.city from customers c join salespeople s where c.city=s.city;


-- OUTPUT:


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
