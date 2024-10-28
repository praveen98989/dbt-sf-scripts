{{
    config(
        materialized='table'
    )
}}  

SELECT *,
    FROM  {{ source('tes1', 'USERS_T') }}
    QUALIFY ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID)=1
