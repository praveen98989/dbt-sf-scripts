{{
    config(
        materialized='table',
        transient=false,
        alias='sales_table_stg1',
        query_tag='DBT_QUERIES'
    )
}}

SELECT id,trim(country) country, 'Rs. '||nvl(SALES_AMOUNT,0) sales_amount,
       TO_CHAR(SALES_DATE,'DD-Mon-yyyy') sales_date,
        case when SALES_AMOUNT<2000 then 'Low Sales'
             when SALES_AMOUNT>=2000 then 'High Sales'  
             when SALES_AMOUNT is null then 'No Sales' end sales_type
  FROM {{ source('rms4', 'sales_details') }}
