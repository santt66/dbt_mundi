-- REQUERIMIENTO 2
-- Listado de todos los business existentes en Mundi, con la cantidad de business_product
-- de tipo invoice advance activos creados en 2021 y 2022;
-- siempre y cuando haya tenido al menos 1 por cada año, de lo contrario mostrar 0.

with product2021 as (SELECT BUSINESS_ID,
                            count(PRODUCT_ID) as business_products_2021
                     from MUNDI.PUBLIC.DIM_BUSINESS_PRODUCT
                     where PRODUCT_NAME = 'INVOICE ADVANCE'
                       and PRODUCT_STATUS = 'ACTIVE'
                       and year(cast(CREATED_AT as date)) = 2021
                     group by 1
                     order by 1),

     product2022 as (SELECT BUSINESS_ID,
                            count(PRODUCT_ID) as business_products_2022
                     from MUNDI.PUBLIC.DIM_BUSINESS_PRODUCT
                     where PRODUCT_NAME = 'INVOICE ADVANCE'
                       and PRODUCT_STATUS = 'ACTIVE'
                       and year(cast(CREATED_AT as date)) = 2022
                     group by 1
                     order by 1)

select distinct(a.NAME)                                                    as business_name,
               b.business_products_2021,
               c.business_products_2022,
               nvl(b.business_products_2021 + c.business_products_2022, 0) as total_products
from MUNDI.PUBLIC.DIM_BUSINESS a
         left join product2021 b on a.BUSINESS_ID = b.BUSINESS_ID
         left join product2022 c on a.BUSINESS_ID = c.BUSINESS_ID
order by 1