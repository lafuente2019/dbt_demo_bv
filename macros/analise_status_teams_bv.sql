with teams_bv as (
    SELECT * FROM {{ref('stage_teams_bv')}}
)
SELECT 
    Status,
    count(Status)
FROM dbt_vlafuentejunior.teams_bv
GROUP BY Status