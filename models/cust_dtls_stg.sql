{{
    config(
        materialized='table'
    )
}}
select * from {{ source('tes', 'CUSTOMER_DETAILS') }}