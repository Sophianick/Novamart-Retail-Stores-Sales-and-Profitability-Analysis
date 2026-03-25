/*Total Revenue*/
SELECT ROUND(SUM(Sales),2) AS Total_Revenue
FROM Cleaned_Global_Superstore2;

/*Total Profit*/
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM Cleaned_Global_Superstore2;

/*Overall Margin*/
SELECT ROUND(SUM(Profit) / SUM(Sales) * 100, 2) 
AS Profit_Margin_Percentage
FROM Cleaned_Global_Superstore2;

