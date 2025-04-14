select DISTINCT COUNT(product_id),discount_per from Productt group by discount_per;


 select DISTINCT COUNT(product_id)as Count, sum(discount_per)as Total_Amount from Productt group by product_id;


select sum(o.total_amount)AS Total_Amount, count(c.customer_id)AS COUNTofID from Orderr o join Customerr c using(customer_id) group by c.state;
