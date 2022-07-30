-- Pedido Operaciones 2
-- Monto de dinero que se ha devuelto, esto es sumatoria del campo effective_collections,
-- siempre que el estado del invoice advance no sea rejected, imputado a la fecha del advace_date

SELECT B.NAME                      AS BUSINESS_NAME,
--        A.ADVANCE_DATE,
--        C.WEEK_OF_YEAR AS ADVACE_WEEK_OF_YEAR,
       C.YEAR_MONTH                AS ADVANCE_YEAR_MONTH,
       SUM(A.EFFECTIVE_COLLECTION) AS SUM_EFF_COL
FROM MUNDI.PUBLIC.FCT_INVOICE_ADVANCE A
         LEFT JOIN MUNDI.PUBLIC.DIM_BUSINESS B ON A.BUSINESS_ID = B.BUSINESS_ID
         LEFT JOIN MUNDI.PUBLIC.DIM_DATE C ON A.ADVANCE_DATE = C.DATE
WHERE A.INVOICE_ADVANCE_STATE <> 'REJECTED'
GROUP BY 1, 2
ORDER BY 2, 1