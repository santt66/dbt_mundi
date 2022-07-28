select id as invoice_id,
       upper(type) as invoice_type,
       payment_method,
       issuer_rfc,
       issuer_name,
       receiver_name,
       currency,
       total,
       exchange_rate,
       upper(status) as invoice_status,
       issued_at,
       certified_at,
       created_at,
       updated_at
from {{ source('mundi', 'INVOICES') }}