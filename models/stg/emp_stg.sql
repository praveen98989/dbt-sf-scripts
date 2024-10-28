{{
    config(
        materialized='table',
        transient=false,
        query_tag='ABC1'
    )
}}
select * from {{ ref('emp_test') }}