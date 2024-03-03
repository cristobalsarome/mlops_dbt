select 
-- index,Unnamed: 0,user_id,movie_id,rating,Date
CAST(scores.index as INTEGER) as index,
CAST(scores."Date" as DATE) as date,
CAST(scores.user_id as INTEGER) as user_id,
CAST(scores.movie_id as INTEGER) as movie_id,
CAST(scores.rating as INTEGER) as rating



 from {{ source('recomender_system_raw', 'scores') }}