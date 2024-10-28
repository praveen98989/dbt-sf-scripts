
{{
    config(
        materialized='incremental'
    )
}}
select * from p_db.p_sc.sales1

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where last_modified_dt > (select max(last_modified_dt) from {{ this }}) 
{% endif %}
