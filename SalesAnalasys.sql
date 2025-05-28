create database company;
use company;
select *from sales;
-------------------------------------------------------------------------------------
-- find all orders shipped via 'Economy ' mode with a total amount greater than 25000
select *from sales
where ship_mode = 'Economy' and Total_Amount > 25000;
------------------------------------------------------------------------------------
-- Retrieve all sales data for 'Technology' category in 'ireland' made after 2020-01-01
select * from sales
where Category = 'Technology' and Country = 'Ireland' and Order_Date > '2020-01-01';
-------------------------------------------------------------------------------------
-- list the top 10 most profitable sales transactions in descending orde 
select *from sales 
order by Unit_Profit desc 
limit 10;
-----------------------------------------------------------------------------------------
-- skip 10 records, showing next 20 recordes
select *from sales 
order by Unit_Profit desc 
limit 10, 20;
---------------------------------- wildcards ------------------------------------------------------
-- find all customers whose name starts with 'j' and ends with 'n' 
select order_id, customer_name from sales where Customer_Name LIKE 'j%n';
-----------------------------------------------------------------------------------------------
select *from sales;
----------------------------------------------------------------------------------------------
-- retrive all product names that contain 'Acco' anywhere in the name
select order_id , product_name from sales 
where product_name like '%acco%';

select city, sum(Total_Amount) as total_sales from sales
group by city
order by sum(Total_Amount) desc
limit 5;
------------------------------------------------------------------------------------------------
-- display the second set of 10 records for custpmer_name and total_amount in decreasing order
select customer_name, total_amount from sales
order by Total_Amount desc
limit 10, 10;

