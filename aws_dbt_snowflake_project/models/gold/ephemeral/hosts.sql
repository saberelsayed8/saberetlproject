{{ config(materialized='ephemeral') }}

select
    host_id,
    host_name,
    host_since,
    is_superhost,
    host_created_at,
from {{ ref('obt') }}