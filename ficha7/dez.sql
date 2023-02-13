SELECT M.Title, COUNT(StreamId) AS N
FROM MOVIE M LEFT OUTER JOIN STREAM S
ON (M.MovieId = S.MovieId)
WHERE M.Year=2015
GROUP BY M.Title
HAVING (N<=5 /*MESMA MERDA COM OU SEM PARENTESES*/
;