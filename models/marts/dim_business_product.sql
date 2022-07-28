select id as business_product_id,
       status,
       version,
       created_at,
       updated_at,
       _fivetran_deleted,
       _fivetran_synced,
       business_id,
       product_name
from {{ source('mundi', 'BUSINESS_PRODUCT') }}