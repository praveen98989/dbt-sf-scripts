{% test validate_mail(model,column_name) %}
   SELECT * FROM {{model}} 
   WHERE {{column_name}} NOT LIKE '%@%' 
{% endtest %}