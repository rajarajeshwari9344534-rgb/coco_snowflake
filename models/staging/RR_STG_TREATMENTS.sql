with source as (

    select * from {{ source('rr_healthcare', 'SOURCE_TREATMENTS') }}

),

renamed as (

    select
        TRIM(TREATMENT_ID) as TREATMENT_ID,
        TRIM(APPOINTMENT_ID) as APPOINTMENT_ID,
        TRIM(TREATMENT_TYPE) as TREATMENT_TYPE,
        TRIM(DESCRIPTION) as DESCRIPTION,
        COST,
        TREATMENT_DATE
    from source

)

select * from renamed
