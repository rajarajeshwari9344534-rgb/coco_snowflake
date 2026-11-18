with source as (

    select * from {{ source('rr_healthcare', 'SOURCE_PATIENTS') }}

),

renamed as (

    select
        TRIM(PATIENT_ID) as PATIENT_ID,
        TRIM(FIRST_NAME) as FIRST_NAME,
        TRIM(LAST_NAME) as LAST_NAME,
        TRIM(GENDER) as GENDER,
        DATE_OF_BIRTH,
        TRIM(CONTACT_NUMBER) as CONTACT_NUMBER,
        TRIM(ADDRESS) as ADDRESS,
        REGISTRATION_DATE,
        TRIM(INSURANCE_PROVIDER) as INSURANCE_PROVIDER,
        TRIM(INSURANCE_NUMBER) as INSURANCE_NUMBER,
        TRIM(EMAIL) as EMAIL
    from source

)

select * from renamed
