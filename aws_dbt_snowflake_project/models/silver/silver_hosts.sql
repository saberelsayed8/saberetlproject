{{ config(
    materialized='incremental',
    unique_key='host_id'
) }}

SELECT
    host_id,
    TRIM(host_name) AS host_name,
    host_since,
    is_superhost,
    response_rate,
    created_at
FROM {{ ref('bronze_hosts') }}
WHERE host_id IS NOT NULL

