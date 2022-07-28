select invoice_advance_id,
sum(total)
from {{ ref('fct_invoice_advance') }}
where total < 0
group by 1