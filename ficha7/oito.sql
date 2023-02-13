SELECT C.Name
FROM
CUSTOMER C LEFT OUTER JOIN STREAM S
ON (C.CustomerId = S.CustomerId)
WHERE S.StreamId IS NULL AND C.Country='China'
;