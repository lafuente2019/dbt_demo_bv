with teams_bv as (
    SELECT * FROM {{ref('teams_bv')}}
)
SELECT 
*,
CASE
WHEN time = 'Palmeiras' THEN 'Orgulhoso'
WHEN time = 'São Paulo' THEN 'Ferias'
WHEN time = 'Corinthians' THEN 'Otimista'
WHEN time = 'Santos' THEN 'Incaivel'
WHEN time = 'Flamengo' THEN 'Vergonhoso'
END AS Status
FROM dbt_vlafuentejunior.teams_bv