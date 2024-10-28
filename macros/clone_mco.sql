{% macro name(src_db,trg_db) %}
   {% set abcd %}
    create or replace database {{trg_db}} clone {{src_db}};
    {% endset%}
    {% do run_query(abcd) %}
{% endmacro %}
