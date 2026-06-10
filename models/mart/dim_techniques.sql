with 

cte_techniques as (

    select * from {{ ref('stg_source__techniques') }}

)
select
        ROW_NUMBER() OVER (ORDER BY technique_id) as technique_sk,
        technique_id,
        technique_name,
        skill_category,
        "level"

    from cte_techniques
