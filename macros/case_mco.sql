{% macro case_mco(GENDER) %}
   CASE WHEN {{GENDER}}='M' THEN 'MALE'
        WHEN {{GENDER}}='F' THEN 'FEMALE'  END 
{% endmacro %}