{% macro empty_column_handle(column_name) %}
     case when trim({{column_name}}) like '' then replace(trim({{column_name}}),'',null)
     else trim({{column_name}}) end
{% endmacro %}