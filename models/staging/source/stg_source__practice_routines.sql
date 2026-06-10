with 

source as (

    select * from {{ source('source', 'practice_routines') }}

),

renamed as (

    select
        routine_id,
        technique_id,
        routine_name,
        duration_minutes,
        target_bpm

    from source

)

select * from renamed