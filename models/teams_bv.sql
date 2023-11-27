with time_bv as (
SELECT
    *
FROM {{ source('dbt_vlafuentejunior', 'teams_bv') }} --dbt_vlafuentejunior.teams_bv
)
SELECT
    *
FROM time_bv