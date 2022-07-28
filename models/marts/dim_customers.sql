select id as customer_id,
       applicant_id,
       upper(status) as customer_status,
       tax_id,
       address,
       email,
       phone_number,
       first_name,
       last_name,
       version,
       _fivetran_deleted,
       _fivetran_synced
from {{ source('mundi', 'CUSTOMER') }}