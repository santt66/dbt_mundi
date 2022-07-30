-- Pedido Riesgo 1
-- Monto de facturas emitidas según el tipo, es decir monto de ingresos, egresos, pagos, pagos nóminas
-- y transferencias de mercadería. Despreciar las invoices no vigentes

SELECT RECEIVER_NAME,
       INVOICE_TYPE,
       ISSUED_AT_DATE,
--        WEEK_OF_YEARTXT AS ISSUED_DATE_WEEK_OF_YEAR,
--        YEAR_MONTH      AS ISSUED_DATE_YEAR_MONTH
    SUM(TOTAL) AS SUM_TOTAL
FROM MUNDI.PUBLIC.FCT_INVOICES A
         LEFT JOIN MUNDI.PUBLIC.DIM_DATE B ON A.ISSUED_AT_DATE = B.DATE
GROUP BY 1,2,3
ORDER BY 1,2,3