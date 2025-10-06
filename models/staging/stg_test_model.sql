
select val
from {{ source('upstream_source', 'dud_table') }}