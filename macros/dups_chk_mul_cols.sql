{% test dups_chk_mul_cols(model,column_names) %} 
    SELECT * FROM {{model}}
    QUALIFY ROW_NUMBER() OVER (PARTITION BY {{column_names | join(',')}} ORDER BY {{column_names | join(',')}})>1
{% endtest %}