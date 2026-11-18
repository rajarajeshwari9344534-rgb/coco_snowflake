with source as (

    select * from {{ source('rr_healthcare', 'SOURCE_APPOINTMENTS') }}

),

renamed as (

    select
        TRIM(APPOINTMENT_ID) as APPOINTMENT_ID,
        TRIM(PATIENT_ID) as PATIENT_ID,
        TRIM(DOCTOR_ID) as DOCTOR_ID,
        APPOINTMENT_DATE,
        APPOINTMENT_TIME,
        TRIM(REASON_FOR_VISIT) as REASON_FOR_VISIT,
        TRIM(STATUS) as STATUS
    from source

)

select * from renamed
