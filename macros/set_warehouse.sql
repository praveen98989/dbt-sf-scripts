{% macro set_warehouse(warehouse_name) %}
    USE WAREHOUSE {{warehouse_name}}
{% endmacro %}