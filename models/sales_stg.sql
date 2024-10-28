{{
    config(
        materialized='table'
    )
}}
--SELECT * FROM RMS_DB.SC.SALES_T
--SELECT * FROM RMS_DEV_DB.SC.SALES_T
select * from {{ source('rms1', 'SALES_T') }}
