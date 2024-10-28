{% snapshot cust2_snp %}
    {{
        config(
            target_schema='SNAPSHOT_SC',
            target_database='SNAPSHOT_DB',
            unique_key='customer_id',
            strategy='timestamp',
            invalidate_hard_deletes=True,
            updated_at='last_modified_at',
            transient=false
        )
    }}

    select * from {{ ref('cust_dtls_t') }}
 {% endsnapshot %}