SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Revenue,
ROUND(SUM(Profit),2) AS Total_Profit,
ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin
FROM Cleaned_Global_Superstore2
GROUP BY Region
ORDER BY Total_Revenue DESC;


SELECT 
    Region,
    AVG(Discount) AS Avg_Discount,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS Profit_Margin
FROM Cleaned_Global_Superstore2
GROUP BY Region
ORDER BY Avg_Discount DESC;
