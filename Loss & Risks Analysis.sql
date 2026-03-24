/*Total Loss*/
SELECT 
SUM(Profit) AS Total_Loss
FROM Cleaned_Global_Superstore2
WHERE Profit < 0;

/**Loss Making Orders*/
SELECT
COUNT(*) AS Loss_Making_Orders,
SUM(Profit) AS Total_loss
FROM Cleaned_Global_Superstore2
WHERE Profit < 0;

/*Loss by Category*/
SELECT
Category,
SUM(Profit) AS Total_Loss
FROM Cleaned_Global_Superstore2
WHERE Profit < 0
GROUP BY Category
ORDER BY Total_Loss ASC

/*Loss by Sub-Category*/
SELECT
Sub_Category,
SUM(Profit) AS Total_Loss
FROM Cleaned_Global_Superstore2
WHERE Profit < 0
GROUP BY Sub_Category
ORDER BY Total_Loss ASC

/*Overall Sub-Category losses*/
SELECT 
Sub_Category,
SUM(Profit) AS Total_Loss
FROM Cleaned_Global_Superstore2
GROUP BY Sub_Category
HAVING SUM(Profit) < 0
ORDER BY Total_Loss ASC;

/*Discount Impact*/
SELECT
Discount,
COUNT(*) AS Number_of_Orders,
SUM(Profit) AS Total_Profit
FROM Cleaned_Global_Superstore2
GROUP BY Discount
ORDER BY Discount ASC;

/*Region Risk*/
SELECT 
Region,
SUM(Profit) AS Total_Profit
FROM Cleaned_Global_Superstore2
GROUP BY Region
ORDER BY Total_Profit ASC;

SELECT 
Region,
SUM(Profit) AS Total_Loss
FROM Cleaned_Global_Superstore2
WHERE Profit < 0
GROUP BY Region
ORDER BY Total_Loss ASC;
