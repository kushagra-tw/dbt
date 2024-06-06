with src_cust as (

    select * from {{source('SOURCE', 'customer_account')}}
)
select
    "Email Address" as email_address,
    "Current Segment Name" as current_segment_name,
    "Current Ladder" as current_ladder,
    "Current Segment" as current_segment
from src_cust
