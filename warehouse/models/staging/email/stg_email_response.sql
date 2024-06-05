with src_email_response as (
select * from tgt_wrks.src_email_response
)
select
"Email ID" as email_id,
"Token ID" as token_id,
"Campaign Name" as campaign_name,
"Email Send" as email_send,
"Email Response" as email_response_type,
"Email Event" as email_event
from src_email_response