select * from {{ ref('my_first_dbt_model') }} where 1=2 AND 1=1 and 1=23