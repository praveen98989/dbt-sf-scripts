{{
    config(
        materialized='table',
        transient=false,
        database='T1_DB',
        schema='T2_SC',
        pre_hook=["use warehouse dbt_l_wh"]
    )
}}
select 1::VARCHAR as identitiication_number