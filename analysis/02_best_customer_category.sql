SELECT
    cust.customer_category as customer,
    ROUND(SUM(sale.quantity * sale.unit_price), 2) AS total_sales
FROM
    public.sales AS sale
    LEFT JOIN public.customers AS cust ON sale.customer_id=cust.customer_id
GROUP BY
    customer
ORDER BY
    total_sales DESC