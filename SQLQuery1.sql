SELECT * from blinkitData

UPDATE blinkitData
SET Item_Fat_Content = 
CASE 
WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END

SELECT DISTINCT(Item_Fat_Content) from blinkitData 

SELECT SUM(Sales) AS total_sales FROM blinkitData where Item_Fat_Content = 'Low Fat'
SELECT CAST(SUM(sales) / 1000000 AS DECIMAL (10,3)) AS Total_sales_million FROM blinkitData where Item_Fat_Content = 'low fat'

SELECT AVG(sales) AS avg_sales FROM blinkitData WHERE Outlet_Establishment_Year = 2018
SELECT CAST(AVG(sales) AS DECIMAL (10,0)) AS Total_sales_million FROM blinkitData 



