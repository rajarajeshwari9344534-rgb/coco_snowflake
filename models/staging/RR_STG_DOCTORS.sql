with source as (

    select * from {{ source('rr_healthcare', 'SOURCE_DOCTORS') }}

),

renamed as (

    select
        TRIM(DOCTOR_ID) as DOCTOR_ID,
        TRIM(FIRST_NAME) as FIRST_NAME,
        TRIM(LAST_NAME) as LAST_NAME,
        TRIM(SPECIALIZATION) as SPECIALIZATION,
        TRIM(PHONE_NUMBER) as PHONE_NUMBER,
        YEARS_EXPERIENCE,
        TRIM(HOSPITAL_BRANCH) as HOSPITAL_BRANCH,
        TRIM(EMAIL) as EMAIL
    from source

)

select * from renamed
