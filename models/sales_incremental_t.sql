{{
    config(
        materialized='incremental',
        query_tag='DBT_WH_QUE'
    )
}}
SELECT * FROM {{ source('p', 'SALES') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where LAST_MODIFIED_DATE > (select max(LAST_MODIFIED_DATE) from {{ this }}) 
{% endif %}

