{{
    config(
        materialized='view',
        alias='em90 view',
        query_tag='dbt_query_tag',
        database='DEMO_DB',
        schema='RAW_SC'
    )
}}
with cte_emp as 
(
SELECT ID as emp_id,NAME,TRIM(CITY),{{empty_column_handle('CITY')}},
{{dbt_utils.generate_surrogate_key(['1'])}}
  FROM  {{ source('de', 'EMP90') }}
)
select * from cte_emp 