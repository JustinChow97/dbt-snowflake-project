with payments as (
    select * from {{ ref('stg_stripe_payments') }}
)

select
    order_id,
    sum(amount) as Total_Amount
from payments
group by order_id
having Total_Amount < 0 