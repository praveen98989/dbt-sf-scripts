
{% macro u(args) %}

    {% set var %}
       COPY INTO PROD_DB.RAW_SC.TI 
FROM (sELECT $1,$2 FROM @PROD_DB.RAW_SC.EXT_STG)
    {% endset%}
    {% do run_query(var) %}
{% endmacro %}