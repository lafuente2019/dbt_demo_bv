with time_bv as (
    SELECT * FROM {{ref('teams_bv')}}
)
SELECT 
*,
CASE
WHEN time = 'Palmeiras' THEN 'Orgulhosos'
WHEN time = 'São Paulo' THEN 'Otimistas'
WHEN time = 'Corinthians' THEN 'Desesperados'
WHEN time = 'Cruzeiro' THEN 'Desesperados'
WHEN time = 'Internacional' THEN 'Desesperados'
WHEN time = 'Nenhum' THEN 'Sem time'
WHEN time = 'Flamengo' THEN 'Frustados'
END AS Status_teams
FROM time_bv