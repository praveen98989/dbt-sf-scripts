{{ dbt_utils.deduplicate(
    relation=source('tes1', 'USERS_T'),
    partition_by='id',
    order_by="id desc",
   )
}}