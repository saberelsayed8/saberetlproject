{{
    config(
        materialized='table'
    )
}}

SELECT
    
    booking_id,
    listing_id,
    host_id,
    
    
    booking_date,
    booking_created_at,
    
    
    nights_booked,
    booking_amount,
    cleaning_fee,
    service_fee,
    price_per_night,
    
    -- Calculated Measure (Total cost of the booking)
    (booking_amount + cleaning_fee + service_fee) AS total_booking_value

FROM {{ ref('obt') }}