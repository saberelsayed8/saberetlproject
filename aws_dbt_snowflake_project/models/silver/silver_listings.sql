{{ config(
    materialized='incremental',
    unique_key='listing_id'
) }}

SELECT
    listing_id,
    host_id,
    TRIM(property_type) AS property_type,
    room_type,
    TRIM(city) AS city,
    TRIM(country) AS country,
    accommodates,
    bedrooms,
    bathrooms,
    price_per_night,
    created_at
FROM {{ ref('bronze_listings') }}
WHERE listing_id IS NOT NULL