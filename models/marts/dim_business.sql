select id as business_id,
       customer_id,
       status,
       name,
       tax_id,
       registration_number,
       type as business_type,
       address,
       _fivetran_deleted,
       _fivetran_synced
from {{ source('mundi', 'BUSINESS') }}