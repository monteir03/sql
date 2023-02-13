SELECT M.Title, A.Name
FROM MOVIE M JOIN MOVIE_ACTOR MA JOIN ACTOR A
ON (MA.MovieId = M.MovieId AND MA.ActorId = A.ActorId)
WHERE
M.Title LIKE '%Superman%'
;
