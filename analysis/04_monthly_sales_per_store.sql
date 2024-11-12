WITH monthly_sales AS (
    SELECT 
        store_id,
        EXTRACT(MONTH FROM date) AS month,
        ROUND(SUM(quantity * unit_price), 2) AS total_sales
    FROM 
        public.sales
    GROUP BY 
        store_id, 
        month
)

SELECT 
    s.store_name AS store,
    SUM(CASE WHEN ms.month = 1 THEN ms.total_sales END) AS "January",
    SUM(CASE WHEN ms.month = 2 THEN ms.total_sales END) AS "February",
    SUM(CASE WHEN ms.month = 3 THEN ms.total_sales END) AS "March",
    SUM(CASE WHEN ms.month = 4 THEN ms.total_sales END) AS "April",
    SUM(CASE WHEN ms.month = 5 THEN ms.total_sales END) AS "May",
    SUM(CASE WHEN ms.month = 6 THEN ms.total_sales END) AS "June",
    SUM(CASE WHEN ms.month = 7 THEN ms.total_sales END) AS "July",
    SUM(CASE WHEN ms.month = 8 THEN ms.total_sales END) AS "August",
    SUM(CASE WHEN ms.month = 9 THEN ms.total_sales END) AS "September",
    SUM(CASE WHEN ms.month = 10 THEN ms.total_sales END) AS "October",
    SUM(CASE WHEN ms.month = 11 THEN ms.total_sales END) AS "November",
    SUM(CASE WHEN ms.month = 12 THEN ms.total_sales END) AS "December"
FROM 
    monthly_sales ms
    JOIN public.stores s ON ms.store_id = s.store_id
GROUP BY 
    store
ORDER BY 
    store