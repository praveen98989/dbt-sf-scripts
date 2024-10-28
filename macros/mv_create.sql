{% macro mv_create(args) %}
    {% set var %}
    CREATE OR REPLACE MATERIALIZED VIEW EMP_MV1 
    AS 
   SELECT * FROM DEMO_DB.TY.EMP;
   {% endset %}
   {% do run_query(var) %}
{% endmacro %}