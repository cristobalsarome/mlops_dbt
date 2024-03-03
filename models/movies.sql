




-- COLUMNS
-- index,id,Name,Release Date,unknown,Action,Adventure,Animation,Children's,Comedy,Crime,Documentary,Drama,Fantasy,Film-Noir,Horror,Musical,Mystery,Romance,Sci-Fi,Thriller,War,Western,IMDB URL
select 
CAST(movies.id as INTEGER) as id,
CAST(movies."Name" as VARCHAR) as name,
CAST(movies."Release_Date" as DATE) as release_date,
CASE WHEN movies."unknown" = 1 THEN TRUE ELSE FALSE END as genre_unknown,
CASE WHEN movies."Action" = 1 THEN TRUE ELSE FALSE END as genre_action,
CASE WHEN movies."Adventure" = 1 THEN TRUE ELSE FALSE END as genre_adventure,
CASE WHEN movies."Animation" = 1 THEN TRUE ELSE FALSE END as genre_animation,
CASE WHEN movies."Children_s" = 1 THEN TRUE ELSE FALSE END as genre_children,
CASE WHEN movies."Comedy" = 1 THEN TRUE ELSE FALSE END as genre_comedy,
CASE WHEN movies."Crime" = 1 THEN TRUE ELSE FALSE END as genre_crime,
CASE WHEN movies."Documentary" = 1 THEN TRUE ELSE FALSE END as genre_documentary,
CASE WHEN movies."Drama" = 1 THEN TRUE ELSE FALSE END as genre_drama,
CASE WHEN movies."Fantasy" = 1 THEN TRUE ELSE FALSE END as genre_fantasy,
CASE WHEN movies."Film_Noir" = 1 THEN TRUE ELSE FALSE END as genre_film_noir,
CASE WHEN movies."Horror" = 1 THEN TRUE ELSE FALSE END as genre_horror,
CASE WHEN movies."Musical" = 1 THEN TRUE ELSE FALSE END as genre_musical,
CASE WHEN movies."Mystery" = 1 THEN TRUE ELSE FALSE END as genre_mystery,
CASE WHEN movies."Romance" = 1 THEN TRUE ELSE FALSE END as genre_romance,
CASE WHEN movies."Sci_Fi" = 1 THEN TRUE ELSE FALSE END as genre_sci_fi,
CASE WHEN movies."Thriller" = 1 THEN TRUE ELSE FALSE END as genre_thriller,
CASE WHEN movies."War" = 1 THEN TRUE ELSE FALSE END as genre_war,
CASE WHEN movies."Western" = 1 THEN TRUE ELSE FALSE END as genre_western,
CAST(movies."IMDB_URL" as VARCHAR) as imdb_url

from {{ source('recomender_system_raw', 'movies') }} as movies
