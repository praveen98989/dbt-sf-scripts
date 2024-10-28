{{
    config(
        materialized='ephemeral'
    )
}}
SELECT * FROM {{ ref('sales_details_stg') }}

