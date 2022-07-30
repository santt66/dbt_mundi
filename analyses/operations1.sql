-- Pedido Operaciones 1
-- Monto de adelantos solicitados por cada uno de los business, esto es sumatoria del campo effective_advance
-- cuando el advance date no es nulo y el estado no es rejected, imputado a la fecha del advance_date

select b.NAME                   as business_name,
--        a.ADVANCE_DATE,
--        c.WEEK_OF_YEAR AS advace_week_of_year,
       c.YEAR_MONTH             as advance_year_month,
       sum(a.EFFECTIVE_ADVANCE) as sum_eff_adv
from MUNDI.PUBLIC.FCT_INVOICE_ADVANCE a
         left join MUNDI.PUBLIC.DIM_BUSINESS b on a.BUSINESS_ID = b.BUSINESS_ID
         left join MUNDI.PUBLIC.DIM_DATE c on a.ADVANCE_DATE = c.DATE
where a.ADVANCE_DATE is not null
  and a.INVOICE_ADVANCE_STATE <> 'REJECTED'
group by 1,
         2
order by 1,
         2