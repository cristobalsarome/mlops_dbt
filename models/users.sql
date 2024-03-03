
select 
CAST(users.index as INTEGER) as "index",
CAST(users.id as INTEGER) as id,
CAST(users."Occupation" as VARCHAR) as occupation,
CAST(users."Active_Since" as DATE) as active_since
from {{ source('recomender_system_raw', 'users') }}