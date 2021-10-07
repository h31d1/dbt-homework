{% snapshot firstnames_snapshot%}

{{
    config(
        target_database="dellstore",
        target_schema="public",
        strategy="check",
        unique_key="id",
        check_cols=['title_count', 'price_sum'],
    )
}}

select * from {{source("dells","firstnames")}}

{% endsnapshot %}