with 

source as (

    select * from {{ source('source', 'techniques') }}

),

renamed as (

    select
        technique_id,
        technique_name,
        skill_category,
        level

    from source

)

select * from renamed