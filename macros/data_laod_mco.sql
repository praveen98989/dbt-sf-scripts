{% macro data_laod_mco(target_table) %}
   {% set sql %}
    COPY INTO {{target_table}} 
    FROM @EXTS_STAG
    FILE_FORMAT=(TYPE=CSV)
    FORCE=TRUE
   ON_ERROR=CONTINUE;
   {% endset %}
   {% do run_query(sql) %}


{% endmacro %}