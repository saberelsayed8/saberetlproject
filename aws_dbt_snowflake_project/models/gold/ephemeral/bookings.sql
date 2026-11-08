{{ config(materialized='ephemeral') }}

select
    booking_id,
    booking_date,
    booking_created_at
from {{ ref('obt') }}