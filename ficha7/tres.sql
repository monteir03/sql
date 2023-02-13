SELECT M.Title, M.Duration, M.Year, S.StreamDate
FROM MOVIE M NATURAL JOIN STREAM S
WHERE M.Duration>=140 AND M.Year=(YEAR(S.StreamDate)-1)
;
