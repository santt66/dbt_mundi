-- Pedido Operaciones 3
-- Monto de dinero debido a los fee del dinero adelantado, esto es sumatoria del campo fee_at_due
-- imputado al due_date, siempre que el invoice advance no sea rejected.

SELECT B.NAME            AS BUSINESS_NAME,
--        A.DUE_DATE,
--        C.WEEK_OF_YEAR AS DUE_DATE_WEEK_OF_YEAR,
       C.YEAR_MONTH      AS DUE_DATE_YEAR_MONTH,
       SUM(A.FEE_AT_DUE) AS SUM_FEE_AT_DUE
FROM MUNDI.PUBLIC.FCT_INVOICE_ADVANCE A
         LEFT JOIN MUNDI.PUBLIC.DIM_BUSINESS B ON A.BUSINESS_ID = B.BUSINESS_ID
         LEFT JOIN MUNDI.PUBLIC.DIM_DATE C ON A.DUE_DATE = C.DATE
WHERE A.INVOICE_ADVANCE_STATE <> 'REJECTED'
GROUP BY 1, 2
ORDER BY 2, 1