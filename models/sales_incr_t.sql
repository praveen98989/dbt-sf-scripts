{{
    config(
        materialized='table',
        query_tag='DBT_WH_QUE'
    )
}}
SELECT * FROM {{ source('p', 'SALES') }}