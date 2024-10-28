{% snapshot emp_status_snp %}
    {{
        config(
            target_schema='SNAPSHOT_SC',
            target_database='SNAPSHOT_DB',
            unique_key='id',
            strategy='check',
            check_cols=['emp_status']
        )
    }}

    select * from {{ ref('emp_status') }}
 {% endsnapshot %}