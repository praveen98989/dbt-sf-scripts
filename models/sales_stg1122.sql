{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('tes', 'SALES') }}