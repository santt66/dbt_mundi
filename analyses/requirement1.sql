-- REQUERIMIENTO 1
-- Se desea obtener el issuer_rfc que no haya emitido invoices de tipo I durante 3 meses consecutivos
-- o más en los últimos 24 meses, junto con los meses consecutivos en los cuales eso sucedió.

-- 1ro agrupé a los issuer_rfc que emitieron factura I por inicio del mes.
with monthly_invoices as (select ISSUER_RFC,
                                 date_trunc('month', ISSUED_AT_DATE) as issued_date_som,
                                 count(distinct ISSUER_RFC)          as cuenta
                          from MUNDI.PUBLIC.FCT_INVOICES
                          where invoice_type = 'I'
                          group by 1, 2
                          order by 2),

-- 2do: armé una nueva agrupación, esta vez con la fecha la primera factura
-- del cada issuer_rfc que emitió tipo I, y la fecha de hoy
     partition_ranges as (select ISSUER_RFC,
                                 min(ISSUED_AT_DATE)                as mindate,
                                 current_date                       as maxdate,
                                 datediff('days', mindate, maxdate) as span
                          from MUNDI.PUBLIC.FCT_INVOICES
                          where invoice_type = 'I'
                          group by 1),

-- 3ro: generé una nueva fila por cada día entre facturas emitidas, y luego la agrupé por mes
     in_fill as (SELECT pr.ISSUER_RFC,
                        date_trunc('month', dateadd('days', n.N_ZERO, pr.mindate)) as date_som
                 FROM partition_ranges as pr
                          JOIN MUNDI.PUBLIC.NUMS as n on pr.span >= N_ZERO
                 group by 1, 2
                 order by 2),


     filled as (SELECT i.ISSUER_RFC,
                       i.date_som,
                       nvl(d.cuenta, 0) as has_invoice
                from in_fill as i
                         left join monthly_invoices as d
                                   on d.ISSUER_RFC = i.ISSUER_RFC and d.issued_date_som = i.date_som
                order by 1, 2),

-- 4to: agregué las columnas que evidencian si se realizó una factura 'n' meses anteriores según la fecha evaluada
     final as (select *,
                      lag(has_invoice) over (partition by ISSUER_RFC order by date_som )    as month1,
                      lag(has_invoice, 2) over (partition by ISSUER_RFC order by date_som ) as month2,
                      lag(has_invoice, 3) over (partition by ISSUER_RFC order by date_som ) as month3,
                      case
                          when nvl(has_invoice + month1 + month2 + month3, 1) >= 1 then true
                          else false end                                                    as issued_in_last_3_months
               from filled)

-- 5to: apliqué las consideraciones del requerimiento.
select *
from final
where issued_in_last_3_months = false
  and date_som >= dateadd(YEAR, -2, CURRENT_DATE)

-- Finalmente, al 28/07/2022, no existen ISSUER_RFC que hayan tenido un período mayor o igual a 3 meses sin
-- facturar en los últimos 2 años. Sugiero quitar los filtros aplicados a la última query para validar el resultado del ejercicio