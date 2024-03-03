SELECT 
scores.index as scores_index,
scores.date as scores_date,
scores.user_id,
scores.movie_id,
scores.rating,
users.occupation as user_occupation,
users.active_since as user_active_since,
movies.name as movie_name,
movies.release_date as movie_release_date,
movies.genre_unknown,
movies.genre_action,
movies.genre_adventure,
movies.genre_animation,
movies.genre_children,
movies.genre_comedy,
movies.genre_crime,
movies.genre_documentary,
movies.genre_drama,
movies.genre_fantasy,
movies.genre_film_noir,
movies.genre_horror,
movies.genre_musical,
movies.genre_mystery,
movies.genre_romance,
movies.genre_sci_fi,
movies.genre_thriller,
movies.genre_war,
movies.genre_western,
movies.imdb_url as movie_imdb_url

FROM 
{{ref('scores')}} scores
JOIN 
{{ref('users')}} users
ON scores.user_id = users.id
JOIN 
{{ref('movies')}} movies
ON scores.movie_id = movies.id
