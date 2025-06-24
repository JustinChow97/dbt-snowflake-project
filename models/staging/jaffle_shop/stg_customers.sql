select
    id as customer_id,
    first_name,
    last_name
--from raw.jaffle_shop.customers

-- adding the sources in the yaml file creates the graph and enables modularity
from {{source("jaffle_shop","customers")}}

