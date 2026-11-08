{{ config(materialized='ephemeral') }}

select
    listing_id,
    listing_created_at
from {{ ref('obt') }}