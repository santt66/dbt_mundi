select id as business_id,
       customer_id,
       upper(status) as business_status,
       name,
       tax_id,
       registration_number,
       upper(type) as business_type,
       address,
       _fivetran_deleted,
       _fivetran_synced
from {{ source('mundi', 'BUSINESS') }}