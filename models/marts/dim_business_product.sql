select id as product_id,
       upper(status) as product_status,
       version,
       created_at,
       updated_at,
       _fivetran_deleted,
       _fivetran_synced,
       business_id,
       upper(product_name) as product_name
from {{ source('mundi', 'BUSINESS_PRODUCT') }}