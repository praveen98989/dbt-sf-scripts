{% macro clone_db_sc_tables(trg_db,trg_sc,src_db,src_sc,table_list) %}
   {% set new_db %}
   CREATE OR REPLACE DATABASE {{trg_db}};
   {% endset  %}
   {% do run_query(new_db) %}

   {% set new_sc %}
   CREATE OR REPLACE SCHEMA {{trg_db}}.{{trg_sc}};
   {% endset %}
   {% do run_query(new_sc) %}

   
    {% for tbl in table_list %}
       {% set source_table=src_db~'.'~src_sc~'.'~tbl %} 
       {% set target_table=trg_db~'.'~trg_sc~'.'~tbl~'_BKP' %} 
         
      {% set clone_tb %}
       CREATE OR REPLACE TABLE {{target_table}} CLONE {{source_table}};
       {% endset %}
       {% do run_query(clone_tb) %}

       
    {% endfor %}

{% endmacro %}
