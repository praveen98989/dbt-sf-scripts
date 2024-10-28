{% macro copy_into(target_table,  on_error='continue', file_format='csv') %}
    
    {% set sql %}
    COPY INTO {{ target_table }}
    FROM (sELECT $1,'o' FROM @PROD_DB.RAW_SC.EXT_STG)
    FILE_FORMAT = (TYPE = '{{ file_format }}')
    ON_ERROR = '{{ on_error }}'
    FORCE=TRUE;
    
    {% endset %}
    
{% do run_query(sql) %}
{% endmacro %}
