{% macro if_empty_column(column_name) %}
    case when {{column_name | trim}} like '' then replace({{column_name | trim}},'',null) 
         when {{column_name | trim}} like '' then replace({{column_name | trim}},' ',null) 
    else {{column_name|trim}}
    end
{% endmacro %}