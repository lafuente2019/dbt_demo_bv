with gold_teams_bv as (
    SELECT
        Status_teams 
    FROM {{ref('stage_teams_bv')}}
)
SELECT 
    Status_teams,
    count(Status_teams) as qtd
FROM gold_teams_bv
GROUP BY Status_teams