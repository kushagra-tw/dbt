with src_cust as (

    select * from tgt_wrks.src_customers_account

)

select
    "Email Address" as email_address,
    "Current Segment Name" as current_segment_name,
    "Current Ladder" as current_ladder,
    "Current Segment" as current_segment
from src_cust
