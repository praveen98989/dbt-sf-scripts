{{
    config(
        materialized='table',
        transient=false,
        query_tag='dbt12',
        pre_hook=["{{set_warehouse(var('vwh'))}}"],
        post_hook=["{{set_warehouse(var('default_wh'))}}"]
    )
}}

SELECT * FROM MY_DATABASE.MY_SCHEMA.SALES_DETAILS_T
