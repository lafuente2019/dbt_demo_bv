with bronze_teams_bv as (
SELECT
    Nome
   ,Time
FROM {{ source('dbt_vlafuentejunior', 'teams_bv') }}
)
SELECT
    *
FROM bronze_teams_bv