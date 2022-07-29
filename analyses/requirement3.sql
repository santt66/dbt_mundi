-- REQUERIMIENTO 3
-- Listado de TODOS los business_product de tipo Invoice Advance que
-- NO tengan invoice_advance o que los que tiene sean todos rejected. Solo considerar los invoice advance en USD

-- 1ro filtré los invoices rejected:
with rejected_invoice_advance as (SELECT *
                                  FROM MUNDI.PUBLIC.FCT_INVOICE_ADVANCE
                                  WHERE CURRENCY = 'USD'
                                    and INVOICE_ADVANCE_STATE = 'REJECTED'),

-- 2do hice un listado de business_product_ids únicos con estado válido de la tabla invoice_advance
     distinct_product_ids AS (SELECT DISTINCT BUSINESS_PRODUCT_ID
                              FROM MUNDI.PUBLIC.FCT_INVOICE_ADVANCE
                              WHERE CURRENCY = 'USD'
                                AND INVOICE_ADVANCE_STATE <> 'REJECTED')

-- 3ro: unifiqué las subqueries a la tabla business product
select a.PRODUCT_ID,
       case when c.BUSINESS_PRODUCT_ID is null then 'No Valid Invoices' else 'Has Valid Invoices' end as has_invoices,
       count(b.INVOICE_ADVANCE_ID)                                                                    as rejected
from MUNDI.PUBLIC.DIM_BUSINESS_PRODUCT a
         left join rejected_invoice_advance b on a.PRODUCT_ID = b.BUSINESS_PRODUCT_ID
         left join distinct_product_ids c on a.PRODUCT_ID = c.BUSINESS_PRODUCT_ID
where has_invoices = 'No Valid Invoices'
group by 1, 2
order by 2 desc, 3 desc

-- Hay entonces 53 products IDs que no han emitido facturas válidas en USD; 52 de ellos nunca solicitaron adelanto y 1 de ellos tiene 168 adelantos rechazados.