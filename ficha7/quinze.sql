UPDATE STREAM
SET Charge = Charge + 1.5
WHERE MovieId IN(
  Select MovieId
  FROM MOVIE
  WHERE Duration>=180
)
AND CustomerId IN(
  SELECT CustomerId
  FROM CUSTOMER CU
  JOIN COUNTRY CO ON(CU.Country = CO.Name)
  JOIN REGION R USING (RegionId)
  WHERE R.Name='EUROPE'
);
