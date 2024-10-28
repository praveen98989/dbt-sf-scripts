{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ ref('sales_details_stg') }}