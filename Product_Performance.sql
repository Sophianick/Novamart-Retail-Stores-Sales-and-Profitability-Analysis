/*Top Products by Revenue*/
SELECT TOP 10
Product_Name,
SUM(Sales) AS Total_Revenue
FROM Cleaned_Global_Superstore2
GROUP BY Product_Name
ORDER BY Total_Revenue DESC;

/*Top Products by Profit*/
SELECT TOP 10
Product_Name,
SUM(Profit) AS Total_Revenue
FROM Cleaned_Global_Superstore2
GROUP BY Product_Name
ORDER BY Total_Revenue DESC;

/*High Revenue, Low Profit Products*/
SELECT TOP 10
Product_Name,
SUM(Sales) AS Total_Revenue,
SUM(Profit) AS Total_Profit,
ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS Profit_Margin
FROM Cleaned_Global_Superstore2
GROUP BY Product_Name
ORDER BY Profit_Margin ASC;

/*Product Category Performance*/
SELECT 
Category,
SUM(Sales) AS Total_Revenue,
SUM(Profit) AS Total_Profit,
ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS Profit_Margin
FROM Cleaned_Global_Superstore2
GROUP BY Category
ORDER BY Total_Revenue DESC

/*Sub-Category Performance*/
SELECT 
Sub_category,
SUM(Sales) AS Total_Revenue,
SUM(Profit) AS Total_Profit,
ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS Profit_Margin
FROM Cleaned_Global_Superstore2
GROUP BY Sub_Category
ORDER BY Total_Revenue DESC;

SELECT 
Sub_category,
SUM(Sales) AS Total_Revenue,
SUM(Profit) AS Total_Profit,
ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS Profit_Margin
FROM Cleaned_Global_Superstore2
GROUP BY Sub_Category
ORDER BY Profit_Margin DESC;