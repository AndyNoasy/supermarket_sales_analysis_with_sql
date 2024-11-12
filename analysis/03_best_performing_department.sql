WITH department_sales AS (
        SELECT
            dep.department AS department,
            ROUND(SUM(sale.quantity * sale.unit_price), 2) AS total_sales
        FROM
            public.sales AS sale
            LEFT JOIN public.products AS prod ON sale.product_id=prod.product_id
            LEFT JOIN public.departments AS dep ON prod.department_id=dep.department_id
        GROUP BY
            dep.department
),
    department_sales_percentage AS (
        SELECT
            department,
            total_sales,
            ROUND((total_sales / SUM(total_sales) OVER()) * 100, 2) AS percentage
        FROM
            department_sales
        GROUP BY
            department,
            department_sales.total_sales
        ORDER BY
            percentage DESC
)

SELECT
    department,
    total_sales,
    percentage,
    ROUND(SUM(percentage) OVER (ORDER BY percentage DESC ROWS UNBOUNDED PRECEDING), 2) AS running_sum_perc
FROM
    department_sales_percentage
ORDER BY
    running_sum_perc ASC