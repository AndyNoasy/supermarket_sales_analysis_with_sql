SELECT
    store.store_name as store,
    ROUND(SUM(sale.quantity * sale.unit_price), 2) AS total_sales
FROM
    public.sales AS sale
    LEFT JOIN public.stores AS store ON sale.store_id=store.store_id
GROUP BY
    store
ORDER BY
    total_sales DESC