with 

source as (

    select * from {{ source('source', 'piece_techniques') }}

),

renamed as (

    select
        piece_id,
        technique_id,
        priority,
        technique_usage

    from source

)

select * from renamed