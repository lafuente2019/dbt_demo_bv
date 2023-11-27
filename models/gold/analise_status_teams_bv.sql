with stage_teams_bv as (
    SELECT * FROM {{ref('stage_teams_bv')}}
)
SELECT 
    Status_teams,
    count(Status_teams) as qtd
FROM stage_teams_bv
GROUP BY Status_teams