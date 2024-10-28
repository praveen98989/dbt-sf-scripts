-- macros/remove_non_numeric.sql

{% macro remove_non_numeric(column_name) %}
    regexp_replace({{ column_name }}, '[^0-9]', '')
{% endmacro %}
