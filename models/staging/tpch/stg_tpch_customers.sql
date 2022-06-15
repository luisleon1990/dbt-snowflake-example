with source as (

    select * from {{ source('tpch', 'customer') }}

),

renamed as (

    select
    
        c_custkey as customer_key,
        c_name as name,
        c_address as address,
        c_nationkey as nation_key,
        c_phone as phone_number,
        c_acctbal as account_balance,
        c_mktsegment as market_segment,
        c_comment as comment,
        1 as new_col

    from source

)

select * from renamed
