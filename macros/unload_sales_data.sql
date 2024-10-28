{% macro unload_sales_data(args) %}
    {% set copy_st %}
    copy into @prod_db.raw_sc.EXT_STG/abc.txt
    from {{ ref('sales_details_stg') }}
    overwrite=true;
    {% endset %}
    {% do run_query(copy_st) %}

{% endmacro %}