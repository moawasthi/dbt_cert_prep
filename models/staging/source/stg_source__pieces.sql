with 

source as (

    select * from {{ source('source', 'pieces') }}

),

renamed as (

    select
        piece_id,
        piece_name,
        exam_board,
        grade,
        style,
        tempo_feel

    from source

)

select * from renamed