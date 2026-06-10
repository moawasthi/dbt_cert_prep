SELECT
    ROW_NUMBER() OVER (ORDER BY routine_id) AS fact_routine_sk,
    routine_id,
    piece_id,
    a.technique_id,
    duration_minutes,
    target_bpm
FROM {{ ref('stg_source__piece_techniques') }} AS a
INNER JOIN {{ ref('stg_source__practice_routines') }} AS b
    ON a.technique_id = b.technique_id