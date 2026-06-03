-- KPI ANALYSIS
SELECT 
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(AVG(discount)*100,2) AS avg_discount_percent,
    SUM(quantity) AS total_quantity
FROM superstore_cleaned;

-- CATEGORY PROFITABILITY
SELECT 
    category,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_cleaned
GROUP BY category
ORDER BY total_profit DESC;

-- Revenue leakage analysis
SELECT 
    sub_category,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(AVG(discount)*100,2) AS avg_discount
FROM superstore_cleaned
GROUP BY sub_category
ORDER BY total_profit ASC;

-- Regional Performence
SELECT 
    region,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_cleaned
GROUP BY region
ORDER BY total_profit DESC;

-- DISCOUNT IMPACT ANALYSIS
SELECT 
    discount,
    ROUND(AVG(profit),2) AS avg_profit
FROM superstore_cleaned
GROUP BY discount
ORDER BY discount;
