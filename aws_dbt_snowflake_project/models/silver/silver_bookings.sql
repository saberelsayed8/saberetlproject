{{ config(
    materialized='incremental',
    unique_key='booking_id'
) }}

SELECT
    booking_id,
    listing_id,
    booking_date,
    nights_booked,
    bookings_amount,
    cleaning_fee,
    service_fee,
    TRIM(booking_status) AS booking_status,
    created_at
FROM {{ ref('bronze_bookings') }}
WHERE booking_id IS NOT NULL

