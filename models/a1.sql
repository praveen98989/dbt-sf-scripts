{{
    config(
        materialized='table'
    )
}}
select {{remove_non_numeric("'1244ol;p9'")}}