{{
    config(
        materialized='table'
    )
}}
SELECT CURRENT_DATABASE() DB,CURRENT_SCHEMA() SC