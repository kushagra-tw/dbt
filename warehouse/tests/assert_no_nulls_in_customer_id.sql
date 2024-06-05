SELECT *
FROM {{ ref('customer1') }}
WHERE customer_id IS NULL
