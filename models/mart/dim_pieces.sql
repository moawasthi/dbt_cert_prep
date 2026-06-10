WITH CTE_pieces AS 
    (select * from {{ ref('stg_source__pieces') }} )
select
        ROW_NUMBER() OVER( ORDER BY piece_id ASC) as piece_sk,
        piece_id,
        piece_name,
        exam_board,
        "grade",
        "style",
        tempo_feel
from CTE_pieces