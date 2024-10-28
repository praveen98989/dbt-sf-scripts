{% macro default_warehouse(warehouse_name) %}
    use warehouse {{warehouse_name}}
{% endmacro %}