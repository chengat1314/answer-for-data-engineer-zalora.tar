c)  
1. Write a query to get total number of Visit over all Item_Codes for the day '2013-01-12'.
    select count(distinct Visits) as f_num
	from reporting.items 
	where Date>=date('2013-01-12') and Date<date('2013-01-13');
------------------------------------------------------------------------------------------

2. Write a query to get total number of visit over all Item_Codes for every year?. 
-- mysql:
   select year(Date) as f_year,count(distinct Visits) as f_num
	from reporting.items  
	group by year(Date)
	order by year(Date);
-- postgreSQL: EXTRACT(year FROM now())
   select EXTRACT(year FROM Date) as f_year,count(distinct Visits) as f_num
    from reporting.items  
	group by EXTRACT(year FROM Date)
	order by EXTRACT(year FROM Date);
------------------------------------------------------------------------------------------

d)
1. write query(s) needed to give account "buying" access to all tables currently in schema "sales", and all future Tables created in schema "sales".  

 GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA sales TO buying;
 or GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA sales TO buying; 