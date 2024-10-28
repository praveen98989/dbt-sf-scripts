{% snapshot names_snp %}
    {{
        config(
            target_schema='SNAPSHOT_SC',
            target_database='SNAPSHOT_DB',
            unique_key='id',
            strategy='check',
            invalidate_hard_deletes=True,
            check_cols=['name']
        )
    }}

    select * from {{ ref('names') }}
 {% endsnapshot %}