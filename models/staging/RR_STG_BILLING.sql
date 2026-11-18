with source as (

    select * from {{ source('rr_healthcare', 'SOURCE_BILLING') }}

),

renamed as (

    select
        TRIM(BILL_ID) as BILL_ID,
        TRIM(PATIENT_ID) as PATIENT_ID,
        TRIM(TREATMENT_ID) as TREATMENT_ID,
        BILL_DATE,
        AMOUNT,
        TRIM(PAYMENT_METHOD) as PAYMENT_METHOD,
        TRIM(PAYMENT_STATUS) as PAYMENT_STATUS
    from source

)

select * from renamed
