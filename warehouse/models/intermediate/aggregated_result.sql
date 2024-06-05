{{
  config(
    materialized = 'table'
    )
}}
with stg_customer_identity as (
    select *
    from
        {{ ref('stg_customer_identity') }}
),
stg_email_response as (
    select *
    from
        {{ ref('stg_email_response') }}
)
select email_event, count(*) as stats
from stg_customer_identity d1
join stg_email_response d2
on d1.email_address = d2.email_id
group by email_event