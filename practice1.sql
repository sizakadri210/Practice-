use retail;
create database retails;
use retails;
select *from sale1;

-- 1)Identify all sales transactions for "Electronics" in the South region to evaluate regional performance for this category.

 select * from sale where Category= 'Electronics'and Region='South'; 

-- 2)Calculate the total revenue and units sold across all stores to measure overall business performance.

select sum(revenue) as Total_revenue , sum(units_sold) as total_units from sale1;

-- 3) Determine the total revenue contribution of each product category to identify top-performing segments.

select category, Revenue from sale1  group by  category;

-- 4)Analyze sales records for January 2024 to assess post-holiday season performance.

 select * from sale1 where date between '2024-01-01' and '2024-01-31';
 
 -- 5)Classify sales transactions based on revenue into "High," "Moderate," and "Low" categories to prioritize product performance reviews.
 
 
select  product_id ,
case 
when revenue < 170 then "low"
when revenue < 260 then "Moderate"
else "high"
End as product_perfomance 
from sale1;

-- 6) Identify which store generated the highest total revenue to recognize the best-performing location.

select max(revenue),store_id from sale1 group by store_id;