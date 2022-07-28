select invoice_advance_id,
sum(total)
from {{ source('mundi', 'INVOICE_ADVANCE') }}
where total >= 0
group by 1