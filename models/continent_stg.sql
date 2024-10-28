{{
    config(
        materialized='table'
    )
}}
SELECT * FROM {{ source('rms1', 'CONTINET_T') }}