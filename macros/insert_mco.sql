{% macro insert_mco(args) %}
   {% set abc %}
    insert into ABC19 values(11,11);
    {% endset %}
    {% do run_query(abc) %}
{% endmacro %}