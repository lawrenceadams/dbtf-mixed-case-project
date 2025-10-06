select count(*)
from {{ ref('stg_test_model') }}
having count(*) != 1
