SELECT
    nation_key,
    name,
    region_key,
    comment
FROM {{ ref('stg_tpch_nation') }}
