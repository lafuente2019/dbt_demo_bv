SELECT
    *
from {{ source('sources', 'teams_bv') }}