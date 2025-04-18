# Questions:

DBT Problem Solving - Set - 006

Consider the following relations

book {isbn, title, language, mrp, publisherid, release_date}
author {authorid, firstName, lastName, phone, emailid} 
book_author {id, isbn, authorid} 
publisher {empno, ename, job, mgr, hiredate, sal, comm, deptno, hobbyid} 

Given the above relations solve the following queries.

### 1. Write a query to display all books whose language is 'English'.
### 2. Write a query to display book title, mrp, and publisher name.
3. Write a query to print publisher name and count the number book published by every publisher, arrange the data in ascending order of publisher name.
4. Write a query to print publisher name who have published maximum number of book.
5. Write a query to display all book details which were released in the month on 'May'.
6. Write a query to display book title, language, mrp, with author’s first name, last name with phone number and author's emailID for all books.
7. Write a query to display author’s first name and count the number of books written by every author, display the output in ascending order of the count.
8. Write a query which displays book title, language, mrp and release date which are published by the publisher 'Rupa Publications'.
9. Write a query to display the author firstname, lastname and his phone number in the following format 9850******.
10. Write a query to display the title, release date, and mrp for all books whose book cost in more than 1200 and language is 'English'.
11. Write a query to display publishers name allong with authors firstname, lastname, phone, and his emailid who have written the book on 'AutoCAD'.
12. Write a query to print book title, language, mrp and release date written by 'Jonathan'.
13. Write a query to print language wise total count of books.
14. Write a query to display publisher wise count of books.
15. Write a query to display book details whose cost of book is more than 'MongoDB' book cost.





Answers Set – 006:

1. select * from book where language = 'English';
2. select title, mrp, publishername from book, publisher where book.publisherid = publisher.publisherid;
3. select publishername, count(*) from book, publisher where book.publisherid = publisher.publisherid group by publishername order by publishername;
4. select publishername from book, publisher where book.publisherid = publisher.publisherid group by publishername having count(*) = (select max(r1) from (select count(*) r1 from book, publisher where book.publisherid = publisher.publisherid group by publishername) temp);
5. select * from book where monthname(release_date) = 'May';
6. select title, language, mrp, firstname, lastname, phone, emailid from book, book_author, author where book.isbn = book_author.isbn and book_author.authorid = author.authorid order by title;
7. select firstname, count(*) R1 from author, book, book_author where  author.authorid = book_author.authorid and book_author.isbn = book.isbn  group by firstname order by R1;
8. select Title, language, mrp, release_date from book, publisher where book.publisherid = publisher.publisherid and publishername = 'Rupa Publications';
9. select firstname, lastname, concat(left(phone,4), rpad('',6,'*')) from author;
10. select title, release_date, mrp from book where mrp > 1200 and language ='English'
11. select publishername, firstname, lastname, phone, author.emailid from book, author, book_author, publisher where book.isbn = book_author.isbn and book_author.authorid = author.authorid and book.publisherid = publisher.publisherid and title='AutoCAD'
12. select title, language, mrp, release_date from book, author, book_author where book.isbn = book_author.isbn and book_author.authorid = author.authorid and author.firstname = 'Jonathan';
13. select language, count(*) from book group by language;
14. select publishername, count(*) from book, publisher where book.publisherid = publisher.publisherid group by publishername;
15. select * from book where mrp > (select mrp from book where title='MongoDB');














