{% set country_name='India' %}
SELECT * FROM {{ source('my_db', 'SALES_DETAILS_T') }}
where (country='{{ var('country_name') }}'
       or 
       country = {{ var('country_name1') }})
