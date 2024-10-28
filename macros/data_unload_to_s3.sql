{% macro data_unload_to_s3(args) %}
    {% set copy_st %}
    copy into @external_stage 
    from {{ ref('sales_details_stg') }}
    overwrite=true
    header=true
    {% endset %}
    {% do run_query(copy_st) %}
{% endmacro %}