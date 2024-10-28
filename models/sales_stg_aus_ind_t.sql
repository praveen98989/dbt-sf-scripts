{{
    config(
        materialized='table',
        alias='sales_stg_aus_t',
        query_tag='DBT1_QUERIES',
        schema='praveen1_sc'
    )
}}

SELECT * FROM {{ source('my_db', 'SALES_DETAILS_T') }}
where (country='{{ var('country_name') }}'
       or 
       country = {{ var('country_name1') }})
