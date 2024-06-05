SELECT *
FROM {{ ref('target_table1') }}
WHERE total_sales = 0
