SELECT * FROM {{ ref('sales_stg1122') }}
where shipped_date< order_date