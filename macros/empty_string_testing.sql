{% test empty_string_testing(model,column_name) %}
    SELECT * FROM {{model}}
WHERE TRIM({{column_name}})=''
{% endtest %}