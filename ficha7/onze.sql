SELECT S1.Name , COUNT(S2.Supervisor) AS N
FROM STAFF S1 LEFT OUTER JOIN STAFF S2
ON (S1.StaffId = S2.Supervisor)
GROUP BY S1.Name
ORDER BY N DESC, S1.Name ASC
;
/*
NA TABELA UM NOVO REGISTO SERIA

1,2 SENDO 1=STAFFID E 2 SUPERVISOR DE 1

OU SEJA 2 PODE aparecer em mais que um refisto

contar quantos um supervisor supervisiona, seria contar as vezes que o numero
neste caso 2 aparece como supervisor e agrupalo group by por pessoas existentes
*/
